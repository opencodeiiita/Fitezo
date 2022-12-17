import 'package:flutter/material.dart';


void main(){
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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                color: Colors.black,
                child: const SizedBox(
                  height: 50.0,
                  child: Text('Fitezo', style: TextStyle(fontSize: 25,color: Colors.white70 , fontWeight: FontWeight.bold) ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: const Center(
                   child: Text("Welcome",style: TextStyle(fontSize: 30),)
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
