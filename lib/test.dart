import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitezo/mainscreen.dart';
import 'package:fitezo/list.dart';

class test extends StatelessWidget {

 final String contin;
   test({super.key, required this.contin});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        
        child: Text(contin,
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 235, 235, 241)),
          ),
      ),
    );
  }
}

