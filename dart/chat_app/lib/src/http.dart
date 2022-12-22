// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:async';
import 'dart:io';

import 'package:alfred/alfred.dart';
// ignore: implementation_imports
import 'package:alfred/src/type_handlers/websocket_type_handler.dart';
import 'package:chat_app/src/settings.dart';
import 'package:chat_app/src/utils.dart';
import 'package:mongo_dart/mongo_dart.dart';

FutureOr errorHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 500;
  return {'message': 'Internal server error'};
}

FutureOr missingHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 404;
  return {'message': 'This route does not exist'};
}

// Starts a server on port 8080
Future<void> serveHttpServer() async {
  // Create the Alfred instance
  final app = Alfred(
      onInternalError: errorHandler,
      onNotFound: missingHandler,
      logLevel: LogType.info);

  // Database
  final Db db = await Db.create(settings['mongodb_url']!);

  // Connect to the database
  await db
      .open()
      .then((value) => print("Connected to database"))
      .catchError((error) => print("Error connecting to database: $error"));

  // Get the collection
  final messages = db.collection(settings['mongodb_db_collection']!);

  // Path to the html code file
  // https://api.dart.dev/stable/2.18.6/dart-io/Platform/script.html
  String htmlFilePath =
      Platform.script.resolve('./src/chat-client.html').toFilePath();

  // Deliver web client for chat
  app.get('/', (req, res) => File(htmlFilePath));

  app.get('/hello', (req, res) => 'Hello World!');

  // Track connected clients
  List<WebSocket> users = [];

  // Create a random string for the userHashId
  String randomUserId = generateId().toString();

  // WebSocket chat relay implementation
  app.get('/ws', (req, res) {
    return WebSocketSession(
      onOpen: (ws) {
        users.add(ws);
        for (var user in users.where((user) => user != ws)) {
          user.send('A new user joined the chat.');
        }
      },
      onClose: (ws) async {
        users.forEach((user) async {
          String id = randomizeString(user.hashCode.toString(), randomUserId);

          user.send('A user has left.');
          await messages
              .deleteMany({'userHashId': id},
                  writeConcern: WriteConcern.acknowledged)
              .then((value) =>
                  value.document != null ? print(value.document) : null)
              .catchError((error) =>
                  print("Error deleting messages from database: $error"));
        });
        // We need to do this last so we can still fetch the messages before deleting the user from the ws cache
        users.remove(ws);
      },
      onMessage: (ws, dynamic data) async {
        users.forEach((user) async {
          String id = randomizeString(user.hashCode.toString(), randomUserId);

          // Send the data to the client
          user.send(data);

          // Save the message to the database
          await messages
              .insertOne({
                'userHashId': id,
                // 'randomUserId':
                //     randomizeString(user.hashCode.toString(), randomUserId),
                'message': data,
              }, writeConcern: WriteConcern.acknowledged)
              .then((value) =>
                  value.document != null ? print(value.document) : null)
              .catchError((error) =>
                  print("Error inserting message to database: $error"));
        });
      },
    );
  });

  final server = await app.listen(8080);

  print('Listening at http://${server.address.host}:${server.port}');
}
