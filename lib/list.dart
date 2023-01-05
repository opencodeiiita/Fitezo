import 'package:fitezo/displayExercise.dart';
import 'package:fitezo/login.dart';
import 'package:fitezo/transitionanimation.dart';
import 'package:flutter/material.dart';
import 'package:fitezo/test.dart';
import 'package:fitezo/mainscreen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ListContainer extends StatelessWidget {
  final User user;
  ListContainer({required this.user});

  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      // ignore: unnecessary_new
      child: new GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DisplayExercise(user: user)));
        },
        child: Container(
          width: double.infinity,
          height: h / 3,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomRight: Radius.circular(00.0),
              topLeft: Radius.circular(0.0),
              bottomLeft: Radius.circular(50.0),
            ),
            gradient: const LinearGradient(
              colors: [
                Color(0xffF53844),
                Color(0xff42378F),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(1, 2),
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  user.gif,
                  height: h / 4,
                ),
                SizedBox(
                  height: h / 100,
                ),
                Text(
                  user.name,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
