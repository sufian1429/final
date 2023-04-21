import 'package:flutter/material.dart';

class BeefBurger extends StatelessWidget {
  const BeefBurger({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beef Burger'),
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
                    'เบอเกอร์เนื้อ',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/2.jpg',
                      width: 220, height: 240, fit: BoxFit.fill),
                  // Image.asset('assets/img/Picture.jpg'),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '99 \฿ ',
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
