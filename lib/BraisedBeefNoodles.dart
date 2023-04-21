import 'package:flutter/material.dart';

class BraisedBeefNoodles extends StatelessWidget {
  const BraisedBeefNoodles({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Braised Beef Noodles'),
      ),
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ก๋วยเตี๋ยวเนื้อตุ๋น ',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/3.jpg',
                      width: 220, height: 240, fit: BoxFit.fill),
                  // Image.asset('assets/img/Picture.jpg'),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '60 \฿ ',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('สั่งอาหาร!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
