import 'package:xid/xid.dart';

// Creates a random Id
Xid generateId() {
  return Xid();
}

// Creates a random string from old strings
String randomizeString(String str1, String str2) {
  String newString = '';
  if (str1.length > str2.length) {
    for (int i = 0; i < str1.length; i++) {
      if (i < str2.length) {
        newString += str1[i] + str2[i];
      } else {
        newString += str1[i];
      }
    }
  } else {
    for (int i = 0; i < str2.length; i++) {
      if (i < str1.length) {
        newString += str1[i] + str2[i];
      } else {
        newString += str2[i];
      }
    }
  }
  return newString;
}
