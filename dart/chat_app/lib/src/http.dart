import 'dart:async';
import 'dart:io';

import 'package:alfred/alfred.dart';
// ignore: implementation_imports
import 'package:alfred/src/type_handlers/websocket_type_handler.dart';

FutureOr errorHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 500;
  return {'message': 'Internal server error'};
}

FutureOr missingHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 404;
  return {'message': 'This route does not exist'};
}

// Starts a server on port 8080
void serveHttpServer() async {
  final app = Alfred(
      onInternalError: errorHandler,
      onNotFound: missingHandler,
      logLevel: LogType.info);

  // Path to the html file
  String dir = File(Platform.script.path).parent.path;

  // print(dir);

  // The full path to the html file, after getting the parent directory of this os
  final File pathToHtml = File('$dir/src/chat-client.html');

  print(pathToHtml);

  // Deliver web client for chat
  app.get('/*', (req, res) => pathToHtml);

  app.get('/hello', (req, res) => 'Hello World!');

  // Track connected clients
  List<WebSocket> users = [];

  // WebSocket chat relay implementation
  app.get('/ws', (req, res) {
    return WebSocketSession(
      onOpen: (ws) {
        users.add(ws);
        for (var user in users.where((user) => user != ws)) {
          user.send('A new user joined the chat.');
        }
        print(ws);
      },
      onClose: (ws) {
        users.remove(ws);
        for (var user in users) {
          user.send('A user has left.');
        }
        print(ws);
      },
      onMessage: (ws, dynamic data) async {
        for (var user in users) {
          user.send(data);
        }
        print(ws);
      },
    );
  });

  var port = 8080;

  final server = await app.listen(port);

  print('Listening at http://${server.address.host}:${server.port}');
}
