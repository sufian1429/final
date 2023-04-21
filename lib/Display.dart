import 'package:flutter/material.dart';
import 'package:flutter_application_1/MenuModle.dart';
import 'package:flutter_application_1/dbHelper/mongodb.dart';

import 'MongoDbModel.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List r = [];
  @override
  void initState() {
    // TODO: implement initState
    // MongoDatabase.getv2();
    setMenu();
    super.initState();
  }

  setMenu() async {
    final t = await MongoDatabase.getv2();
    setState(() {
      r = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: r.length,
          itemBuilder: (context, index) {
            return displayCard(r[index]);
          },
        ),
      ),
    );
  }

  Widget displayCard(MenuModle data) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text("${data.foods}"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.foods!.length,
              itemBuilder: (context, index) {
                return Text("${data.foods![index]}");
              },
            ),
            SizedBox(
              height: 5,
            ),
            // Text("${data.quantities}"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.foods!.length,
              itemBuilder: (context, index) {
                return Text("${data.quantities![index]}");
              },
            ),
            SizedBox(
              height: 5,
            ),
            Text("${data.totalPrice}"),
            SizedBox(
              height: 5,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Edit'),
            // ),
            ElevatedButton(
              onPressed: () async {
                await MongoDatabase.delete(data);
                setState(() {});
              },
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
