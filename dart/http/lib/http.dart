import 'dart:async';
import 'dart:io';

import 'package:alfred/alfred.dart';

import 'package:http/html.dart';

FutureOr missingHandler(HttpRequest req, HttpResponse res) {
  res.statusCode = 404;
  return {'message': 'This page does not exist'};
}

void main() async {
  final app = Alfred(onNotFound: missingHandler);

  app.get('/', (req, res) {
    res.headers.contentType = ContentType.html;
    return htmlHomeRoute();
  });

  app.get('/html', (req, res) {
    res.headers.contentType = ContentType.html;
    return htmlHTMLRoute();
  });

  // Some fake json data
  final data = [
    {'name': 'John', 'age': 30},
    {'name': 'Peter', 'age': 40},
    {'name': 'Sally', 'age': 50},
  ];

  app.get('/json', (req, res) {
    return data;
  });

  await app.listen(); //Listening on port 3000
}
