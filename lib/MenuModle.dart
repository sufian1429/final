import 'dbHelper/mongodb.dart';

class MenuModle {
  // String? sId;
  List<String>? foods;
  List<int>? quantities;
  double? totalPrice;

  MenuModle({this.foods, this.quantities, this.totalPrice});

  MenuModle.fromJson(Map<String, dynamic> json) {
    // sId = json['_id'];
    foods = json['foods'].cast<String>();
    quantities = json['quantities'].cast<int>();
    totalPrice = json['totalPrice'].toDouble();
  }
  // static Future<void> delete(String id) async {
  //   await MongoDatabase.delete(id);
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['_id'] = this.sId;
    data['foods'] = this.foods;
    data['quantities'] = this.quantities;
    data['totalPrice'] = this.totalPrice;

    return data;
  }
}
