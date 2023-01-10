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
    return Scaffold(
        appBar: AppBar(
            title: Text(
              user.name,
              style: GoogleFonts.openSans(
                  fontSize: 20, fontWeight: FontWeight.w400),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff8485e5),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios))),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: w / 40, vertical: h / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(user.gif),
              SizedBox(
                height: h / 80,
              ),
              // Spacer(),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                        ))),
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: w / 40),
                      margin: EdgeInsets.only(bottom: h / 60),
                      height: h / 20,
                      color: Color(0xff8485e5),
                    ),
                    textFields(txt: user.equipment, h: h),
                    textFields(txt: user.target, h: h),
                    textFields(txt: user.bodyPart, h: h),
                  ],
                ),
              ),
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
    return Center(
      child: Column(
        children: [
          Text(
            txt,
            style: GoogleFonts.openSans(
                fontSize: 25,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: h / 60,
          ),
        ],
      ),
    );
  }
}

List<BoxShadow> shadow = [
  BoxShadow(color: Colors.grey[300]!, blurRadius: 30, offset: Offset(0, 10))
];
