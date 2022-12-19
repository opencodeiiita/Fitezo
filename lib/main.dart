import 'package:fitezo/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  
   myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    final List conti=['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'];
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
    
            Container(
              width: double.infinity,
              height: 60.0,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text('Fitezo',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),  
                ],
              ),
            ),
           
          Expanded(
            child: ListView.builder(
            itemCount: conti.length,
            itemBuilder: (context, index)
            {
                return ListContainer(
                con: conti[index],
              );
            }
            ),
          )
          ],
        )),
      ),
    );
  }
}
