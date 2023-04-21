// // To parse this JSON data, do
// //
// //     final mongoDbModle = mongoDbModleFromJson(jsonString);

// import 'dart:convert';

// MongoDbModle mongoDbModleFromJson(String str) => MongoDbModle.fromJson(json.decode(str));

// String mongoDbModleToJson(MongoDbModle data) => json.encode(data.toJson());

// class MongoDbModle {
//     MongoDbModle({
//         required this.id,
//         required this.food,
//         required this.quantities,
//         required this.totalPrice,
//     });

//     String id;
//     List<String> food;
//     List<int> quantities;
//     int totalPrice;

//     factory MongoDbModle.fromJson(Map<String, dynamic> json) => MongoDbModle(
//         id: json["_id"],
//         food: List<String>.from(json["food"].map((x) => x)),
//         quantities: List<int>.from(json["quantities"].map((x) => x)),
//         totalPrice: json["totalPrice"],
//     );

//     Map<String, dynamic> toJson() => {
//         "_id": id,
//         "food": List<dynamic>.from(food.map((x) => x)),
//         "quantities": List<dynamic>.from(quantities.map((x) => x)),
//         "totalPrice": totalPrice,
//     };
// }
