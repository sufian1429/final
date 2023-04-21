import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dbHelper/mongodb.dart';
import 'package:flutter_application_1/steak.dart';
import 'package:mongo_dart/mongo_dart.dart' as mg;

import 'BeefBurger.dart';
import 'BraisedBeefNoodles.dart';
import 'Display.dart';
import 'SaladRoll.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, double> _foodMenu = {
    'Steak': 200,
    'Beef Burger': 99,
    'Braised Beef Noodles': 60,
    'Salad Roll': 50,
  };

  Map<String, int> _foodCount = {
    'Steak': 0,
    'Beef Burger': 0,
    'Braised Beef Noodles': 0,
    'Salad Roll': 0,
  };

  double _totalPrice = 0;

  void _updateTotalPrice() {
    double total = 0;
    _foodMenu.forEach((key, value) {
      total += _foodCount[key]! * value;
    });
    setState(() {
      _totalPrice = total;
    });
  }

  void _incrementFoodCount(String foodName) {
    setState(() {
      _foodCount.update(foodName, (value) => value + 1, ifAbsent: () => 1);
      _updateTotalPrice();
    });
  }

  void _decrementFoodCount(String foodName) {
    if (_foodCount[foodName]! > 0) {
      setState(() {
        _foodCount.update(foodName, (value) => value - 1, ifAbsent: () => 0);

        _updateTotalPrice();
      });
    }
  }

  // เพิ่มจำนวนอาหาร
  void _addFoodCount(String foodName) {
    setState(() {
      _foodCount[foodName] = (_foodCount[foodName] ?? 0) + 1;
    });
  }

  // ลบจำนวนอาหาร
  void _removeFoodCount(String foodName) {
    setState(() {
      if ((_foodCount[foodName] ?? 0) > 0) {
        _foodCount[foodName] = _foodCount[foodName]! - 1;
      }
    });
  }

  // คำนวณราคาอาหาร
  num calculateTotalPrice() {
    num totalPrice = 0;
    _foodCount.forEach((foodName, foodCount) {
      num foodPrice = _foodMenu[foodName] ?? 0;
      totalPrice += foodCount * foodPrice;
    });
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Restaurant'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 8,
                      child: InkWell(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Yay! steak!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const steak()),
                                );
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(1.0),
                          width: 82.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/1.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          )),
                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       'Steak',
                          //       style: TextStyle(
                          //         fontSize: 30,
                          //         foreground: Paint()
                          //           ..style = PaintingStyle.stroke
                          //           ..strokeWidth = 3
                          //           ..color = Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ),
                      )),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 8,
                      child: InkWell(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Yay! Beef Burger!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BeefBurger()),
                                );
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(1.0),
                          width: 82.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/2.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          )),
                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       'Beef Burger',
                          //       style: TextStyle(
                          //         fontSize: 30,
                          //         foreground: Paint()
                          //           ..style = PaintingStyle.stroke
                          //           ..strokeWidth = 3
                          //           ..color = Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ),
                      )),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 8,
                      child: InkWell(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Yay! Braised Beef Noodles!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BraisedBeefNoodles()),
                                );
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(1.0),
                          width: 82.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/3.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          )),
                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       'Braised Beef Noodles',
                          //       style: TextStyle(
                          //         fontSize: 30,
                          //         foreground: Paint()
                          //           ..style = PaintingStyle.stroke
                          //           ..strokeWidth = 3
                          //           ..color = Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ),
                      )),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                      color: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 8,
                      child: InkWell(
                        onTap: () {
                          final snackBar = SnackBar(
                            content: const Text('Yay! Salad Roll!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SaladRoll()),
                                );
                              },
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(1.0),
                          width: 82.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/4.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          )),
                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       'Salad Roll',
                          //       style: TextStyle(
                          //         fontSize: 30,
                          //         foreground: Paint()
                          //           ..style = PaintingStyle.stroke
                          //           ..strokeWidth = 3
                          //           ..color = Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ),
                      )),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: _foodMenu.keys.map((foodName) {
                return Builder(builder: (context) {
                  return ListTile(
                    title: Text(foodName),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                _addFoodCount(foodName);
                              },
                              icon: Icon(Icons.add),
                            ),
                            Text('${_foodCount[foodName] ?? 0}'),
                            IconButton(
                              onPressed: () {
                                _removeFoodCount(foodName);
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total: ${calculateTotalPrice().toStringAsFixed(2)} \฿ ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Display()),
                  );
                },
                child: Text('Display'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _foodCount.clear();
                    _totalPrice = 0;
                  });
                },
                child: Text('Clear All'),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Bill',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            ListView(
                              shrinkWrap: true,
                              children: _foodCount.keys.map((foodName) {
                                int foodCount = _foodCount[foodName]!;
                                num foodPrice = _foodMenu[foodName] ?? 0;
                                return ListTile(
                                  title: Text(foodName),
                                  trailing: Text(
                                    '${foodCount} x ${foodPrice} = ${(foodCount * foodPrice).toStringAsFixed(2)}',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Total: ${calculateTotalPrice().toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 16),
                            
                            ElevatedButton(
                              onPressed: () async {
                                try {
                                  await MongoDatabase
                                      .connect(); // connect to the database
                                  var userCollection =
                                      MongoDatabase.userCollection;
                                  mg.WriteResult result =
                                      await userCollection.insertOne({
                                    'foods': _foodCount.keys.toList(),
                                    'quantities': _foodCount.values.toList(),
                                    'totalPrice': calculateTotalPrice()
                                  });
                                  log(result.code.toString());
                                  print('Insert success. ID: ${result.id}');
                                  setState(() {
                                    _foodCount.clear();
                                    _totalPrice = 0;
                                  });
                                  Navigator.pop(context);
                                } catch (e) {
                                  log(e.toString());
                                }
                              },
                              child: Text('Pay'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text('Pay'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
