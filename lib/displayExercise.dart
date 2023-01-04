import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainscreen.dart';

class DisplayExercise extends StatelessWidget {
  DisplayExercise({required this.user});
  User user;

  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: w / 40, vertical: h / 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(user.gif),
          SizedBox(
            height: h / 80,
          ),
          textFields(txt: 'Name: ' + user.name, h: h),
          textFields(txt: 'Equipment: ' + user.equipment, h: h),
          textFields(txt: 'Target: ' + user.target, h: h),
          textFields(txt: 'Bodypart: ' + user.bodyPart, h: h),
        ],
      ),
    ));
  }
}

class textFields extends StatelessWidget {
  const textFields({
    Key? key,
    required this.txt,
    required this.h,
  }) : super(key: key);

  final String txt;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          txt,
          style: GoogleFonts.poppins(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Color.fromARGB(255, 255, 222, 197),
          ),
        ),
        SizedBox(
          height: h / 80,
        ),
      ],
    );
  }
}
