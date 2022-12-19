import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  final String con;
  ListContainer({required this.con});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: 300,
        
        color: Colors.grey,
        child:  Center(
            
            child: Text(con,style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
