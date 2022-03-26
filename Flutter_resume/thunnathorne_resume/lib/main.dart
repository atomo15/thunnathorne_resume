import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TS Resume',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black, primaryColor: Colors.green),
      darkTheme: ThemeData.dark(),
      //darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Thunnathorne Resume'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 250,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: new NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/bosdyn-abc38.appspot.com/o/Atom_Vegas.jpg?alt=media&token=4535ac6a-872a-45cf-b0c3-22ca901a8845"))),
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                  text: 'Thunnathorne Synhiranakkrakul ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 245, 23),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    //backgroundColor: Colors.black
                  )),
            )
            // Image.asset(
            //   'images/Atom_Vegas.jpg',
            //   height: 300,
            // )
          ],
        ),
      ),
    );
  }
}
