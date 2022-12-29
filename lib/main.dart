import 'package:fitezo/Profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Fitezo",
            style: TextStyle(
                fontSize: 25,
                color: Colors.white70,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: double.infinity,
          height: 500,
          child: Center(
              child: Text(
            "Welcome",
            style: TextStyle(fontSize: 30),
          )),
        ),
      ),
    );
  }
}
