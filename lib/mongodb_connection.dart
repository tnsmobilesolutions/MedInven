// import 'package:mongo_dart/mongo_dart.dart';

// //const connection_Url = 'mongodb://127.0.0.1:27017/MedInven';
// const userCollection = 'Sales';
// Db? db;

// Future<Db?> getConnection() async {
//   if (db == null) {
//     try {
//       db = Db(_getConnectionString());
//       await db?.open();
//       var database = db?.collection('Sales');
//       print(database);
//     } catch (e) {
//       print(e);
//     }
//   }
//   return db;
// }

// _getConnectionString() {
//   return 'mongodb://192.168.229.206:27017/MedInven';
// }

// closeConnection() {
//   db?.close();
// }

//   // static connect() async {
//   //   db = Db(connection_Url);
//   //   await db.open();
//   //   inspect(db);
//   //   userCollection = db.collection(userCollection);
//   // }

