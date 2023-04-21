import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_application_1/MenuModle.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_application_1/dbHelper/constant.dart';

import '../Tools.dart';

class MongoDatabase {
  static late DbCollection userCollection;
  static late Db db;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);
  }

  // static Future<List<Map<String, dynamic>>> getData() async {
  //   final arrData = await userCollection.find().toList();
  //   List<Map<String, dynamic>> data = arrData.map((doc) {
  //     final id = doc['_id'].toJson(); // Convert ObjectId to String
  //     final Map<String, dynamic> data = {...doc, '_id': id};
  //     return data;
  //   }).toList();
  //   return data;
  // }

  static Future<List<MenuModle>> getv2() async {
    try {
      final res = await userCollection.find();
      final List l = await res.toList();
      Tools.prettierJson(l.first);
      log(l.first.runtimeType.toString());
      return List.generate(l.length, (index) => MenuModle.fromJson(l[index]));
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  // Add the following function to the _DisplayState class
  static delete(MenuModle data) async {
    await userCollection.remove(where.id(ObjectId.parse(data.toString())));
    // return ();
  }

  static Future<String> insertData(Map<String, dynamic> document) async {
    try {
      await userCollection.insertOne(document);
      return "Data Inserted";
    } catch (e) {
      print(e.toString());
      return "Something Wrong while inserting data";
    }
  }
}
