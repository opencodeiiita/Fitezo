import 'package:fitezo/transitionanimation.dart';
import 'package:flutter/material.dart';
import 'package:fitezo/test.dart';
import 'package:fitezo/mainscreen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GridContainer extends StatelessWidget {
  final String con;
  GridContainer({required this.con});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 222, 197),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        // ignore: unnecessary_new
        child: new GestureDetector(
          onTap: () {
            Navigator.push(context, Transit(widget: test(contin: con)));
          },
          child: Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                bottomLeft: Radius.circular(50.0),
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xffffa6b3),
                  Color(0xffb381d9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(1, 2),
                ),
              ],
            ),
            child: Center(
                child: Text(
              con,
              style: const TextStyle(fontSize: 30, color: Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}
