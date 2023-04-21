// // ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/dbHelper/mongodb.dart';

// import 'MongoDbModel.dart';

// class MongoDbUpdate extends StatefulWidget {
//   const MongoDbUpdate({Key? key}) : super(key: key);

//   @override
//   State<MongoDbUpdate> createState() => _MongoDbUpdateState();
// }

// class _MongoDbUpdateState extends State<MongoDbUpdate> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: FutureBuilder(builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     return displaycardData(
//                         MongoDbModle.fromJson(snapshot.data[index]));
//                   }
//                   );
//             } else {
//               return Center(
//                 child: Text("No Data Found"),
//               );
//             }
//           }
//         }),
//       ),
//     );
//   }

//   Widget displaycardData(MongoDbModle mongoDbModle) {}
// }
