import 'package:calculator/functions.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
    expect(addNumbers(2, 2), 4);
  });

  test('subtract', () {
    expect(subtractNumbers(2, 2), 0);
  });

  test('multiply', () {
    expect(multiplyNumbers(2, 2), 4);
  });

  test('divide', () {
    expect(divideNumbers(2, 2), 1);
  });

  test('calculate', () {
    expect(calculate('+', 2, 2), 4);
    expect(calculate('-', 2, 2), 0);
    expect(calculate('*', 2, 2), 4);
    expect(calculate('/', 2, 2), 1);
  });
}
