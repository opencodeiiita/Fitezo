import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitezo/mainscreen.dart';
import 'package:fitezo/list.dart';

class test extends StatelessWidget {
  final String contin;
  test({super.key, required this.contin});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // ignore: unnecessary_new
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: Center(
          child: Text(contin,
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 8)),
            ),
      ),
    );
  }
}
