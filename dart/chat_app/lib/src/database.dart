import 'package:mongo_dart/mongo_dart.dart';

Future<void> connectDatabase() async {
  // Connect to database
  final db = Db('mongo_url');

  // Open connection
  await db.open();

  // Get collection
  final collection = db.collection('test');

  // Insert document
  await collection.insert({'name': 'John'});

  // Find document
  final doc = await collection.findOne({'name': 'John'});

  // Print document
  print(doc);

  // Close connection
  await db.close();
}
