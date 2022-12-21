import 'dart:io';

import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();

  app.get('/', (req, res) {
    res.headers.contentType = ContentType.html;
    return getMainBody();
  });

  app.get('/html', (req, res) {
    res.headers.contentType = ContentType.html;
    return getHtmlBody();
  });

  await app.listen(); //Listening on port 3000
}

String getMainBody() {
  return '''
  <html>
    <body>
      <h1>Hello, World!</h1>
    </body>
  </html>
  ''';
}

String getHtmlBody() {
  return '''
  <html>
    <body>
      <h1>Hello, /html!</h1>
    </body>
  </html>
  ''';
}
