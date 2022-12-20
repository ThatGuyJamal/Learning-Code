var map = {};
var names = <String>{};

void main(List<String> args) {
  print(reverseList([1, 2, 3, 4, 5]));

  addToMap('key', 'value');
  addToMap('key2', 'value2');

  addToSet('name');
  addToSet('name2');

  print(getValuesFromMap());
  print(getValuesFromSet());

  print("The runTimeType of map is ${map.runtimeType}");
  print("The runTimeType of names is ${names.runtimeType}");
}

reverseList(List<int> listOfNumbers) {
  for (var i = 0; i < listOfNumbers.length; i++) {
    return listOfNumbers.reversed.toList();
  }
}

// Create a map
addToMap(String key, String value) {
  map[key] = value;
}

// get all values from map
getValuesFromMap() {
  return map;
}

// add to set
addToSet(String name) {
  names.add(name);
}

// get all values from set
getValuesFromSet() {
  return names;
}
