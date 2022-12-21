import 'dart:ffi';

import 'package:test/test.dart';

void main() {
  test('', () {
    expect(() => {}, throwsA(isA<UnimplementedError>()));
  });
}
