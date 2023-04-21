// import 'package:flutter/material.dart';

// import 'BraisedBeefNoodles.dart';
// import 'SaladRoll.dart';
// import 'steak.dart';
// import 'BeefBurger.dart';



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Food Restaurant',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//       ),
//       home: const MyHomePage(title: 'Food Restaurant'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.food_bank,
//           color: Colors.white,
//         ),
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const SizedBox(
//                 child: Text(
//                   'Menu',
//                   style: TextStyle(
//                     fontSize: 40,
//                     color: Colors.amber,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   child: Card(
//                       color: Colors.red,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 8,
//                       child: InkWell(
//                         onTap: () {
//                           final snackBar = SnackBar(
//                             content: const Text('Yay! steak!'),
//                             action: SnackBarAction(
//                               label: 'Ok',
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const steak()),
//                                 );
//                               },
//                             ),
//                           );

//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                         },
//                         child: Container(
//                             margin: const EdgeInsets.all(10.0),
//                             width: 400.0,
//                             height: 400.0,
//                             decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage('images/1.jpg'),
//                               fit: BoxFit.cover,
//                               alignment: Alignment.topCenter,
//                             )),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Steak',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     foreground: Paint()
//                                       ..style = PaintingStyle.stroke
//                                       ..strokeWidth = 3
//                                       ..color = Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       )),
//                 ),
//               ),
//               Container(
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   child: Card(
//                       color: Colors.yellow,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 8,
//                       child: InkWell(
//                         onTap: () {
//                           final snackBar = SnackBar(
//                             content: const Text('Yay! Beef Burger!'),
//                             action: SnackBarAction(
//                               label: 'Ok',
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const BeefBurger()),
//                                 );
//                               },
//                             ),
//                           );

//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                         },
//                         child: Container(
//                             margin: const EdgeInsets.all(10.0),
//                             width: 400.0,
//                             height: 400.0,
//                             decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage('images/2.jpg'),
//                               fit: BoxFit.cover,
//                               alignment: Alignment.topCenter,
//                             )),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Beef Burger',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     foreground: Paint()
//                                       ..style = PaintingStyle.stroke
//                                       ..strokeWidth = 3
//                                       ..color = Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       )),
//                 ),
//               ),
//               Container(
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   child: Card(
//                       color: Colors.black,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 8,
//                       child: InkWell(
//                         onTap: () {
//                           final snackBar = SnackBar(
//                             content: const Text('Yay! Braised Beef Noodles!'),
//                             action: SnackBarAction(
//                               label: 'Ok',
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           const BraisedBeefNoodles()),
//                                 );
//                               },
//                             ),
//                           );

//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                         },
//                         child: Container(
//                             margin: const EdgeInsets.all(10.0),
//                             width: 400.0,
//                             height: 400.0,
//                             decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage('images/3.jpg'),
//                               fit: BoxFit.cover,
//                               alignment: Alignment.topCenter,
//                             )),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Braised Beef Noodles',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     foreground: Paint()
//                                       ..style = PaintingStyle.stroke
//                                       ..strokeWidth = 3
//                                       ..color = Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       )),
//                 ),
//               ),
//               Container(
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   child: Card(
//                       color: Colors.deepPurpleAccent,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       elevation: 8,
//                       child: InkWell(
//                         onTap: () {
//                           final snackBar = SnackBar(
//                             content: const Text('Yay! Salad Roll!'),
//                             action: SnackBarAction(
//                               label: 'Ok',
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => const SaladRoll()),
//                                 );
//                               },
//                             ),
//                           );

//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                         },
//                         child: Container(
//                             margin: const EdgeInsets.all(10.0),
//                             width: 400.0,
//                             height: 400.0,
//                             decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                               image: AssetImage('images/4.jpg'),
//                               fit: BoxFit.cover,
//                               alignment: Alignment.topCenter,
//                             )),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Salad Roll',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     foreground: Paint()
//                                       ..style = PaintingStyle.stroke
//                                       ..strokeWidth = 3
//                                       ..color = Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             )
//                             ),
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }