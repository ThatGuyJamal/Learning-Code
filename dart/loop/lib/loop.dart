void main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    print(i);

    while (i == 5) {
      print('i is 5');
      break;
    }
  }
}
