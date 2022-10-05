import 'package:mongo_dart/mongo_dart.dart';

// ignore: prefer_typing_uninitialized_variables
var userCollection;

connectDB() async {
  var db = await Db.create(
      "mongodb+srv://enirox:Pwafukadi@cluster0.4iczrsa.mongodb.net/?retryWrites=true&w=majority");
  await db.open();
  final userDatabase = db.collection('users');
  userCollection = userDatabase;
}
