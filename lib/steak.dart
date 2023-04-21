import 'package:flutter/material.dart';

class steak extends StatelessWidget {
  const steak({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Steak'),
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
                    'สเต๊กเนื้อ ',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/1.jpg',
                      width: 220, height: 240, fit: BoxFit.fill),
                  // Image.asset('assets/img/Picture.jpg'),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '299 \฿ ',
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
