import 'package:flutter/material.dart';
import 'package:fitezo/test.dart';
import 'package:fitezo/mainscreen.dart';
class ListContainer extends StatelessWidget {
  final String con;
  ListContainer({required this.con});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      // ignore: unnecessary_new
      child: new GestureDetector(   
        onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) =>  test(contin: con,),),
  );
        },
      child: Container(
        width: double.infinity,
        height: 300,
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
            child: Text(con,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        )),
      ),
    ),
    );
  }
}
