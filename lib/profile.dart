import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    Color _color = Color.fromARGB(255, 174, 103, 199);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 243, 254),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
        title: Text(
          'Profile',
        ),
        backgroundColor: Color.fromARGB(255, 174, 103, 199),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        
        
        child: Container(
          padding: EdgeInsets.symmetric(vertical: h / 80, horizontal: w / 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: h/10,
                ),
                CircleAvatar(
                  radius: w/4.5,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1168369629/photo/happy-smiling-african-american-child-girl-yellow-background.jpg?s=612x612&w=0&k=20&c=qNP1LnRN6n_pGDBkD3axUdh1V1R53pdWWymHAhgNZag='),
                ),
                SizedBox(
                  height: h / 50,
                ),
                 Text(
               'Alina Mathew',
               style: TextStyle(
                 fontSize: 30,
                 color: Color.fromARGB(255, 7, 7, 7),
                fontWeight: FontWeight.bold,
                 fontFamily: 'Pacifico',
               ),

             ),
             Text(
               'Los Angeles, CA',
               style: TextStyle(
                 fontSize: 15.0,
                 fontFamily: 'Assin',
                 color: Color.fromARGB(255, 97, 100, 100),
                 fontWeight: FontWeight.bold,
               ),
             ),
             Container(
                color: Colors.white,

               margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),

               child: Padding(
                 padding: EdgeInsets.all( 5.0),
                 child: ListTile(
                   leading: Icon(
                       Icons.phone,
                       size: 35.0,
                       color:Color.fromARGB(255, 174, 103, 199),
                 ),
                   title:
                   Text(
                       '+91 85214976804',
                       style: TextStyle(
                         color: Colors.teal[900],
                         fontFamily: 'Assin',
                         fontSize:20.0,


                       ),



                     ),


                     ),

                 ),
                ),
                Container(
                color: Colors.white,

               margin: EdgeInsets.only(top: 19.0,left: 20.0,right: 20.0),

               child: Padding(
                 padding: EdgeInsets.all( 5.0),
                 child: ListTile(
                   leading: Icon(
                       Icons.email,
                       size: 35.0,
                       color:Color.fromARGB(255, 174, 103, 199),
                 ),
                   title:
                   Text(
                       'Alina12coo@gmail.com',
                       style: TextStyle(
                         color: Colors.teal[900],
                         fontFamily: 'Assin',
                         fontSize:20.0,


                       ),



                     ),


                     ),

                 ),
                ),
                Container(
                color: Colors.white,
              
              
               margin: EdgeInsets.only(top: 19.0,left: 20.0,right: 20.0),

               child: Padding(
                 padding: EdgeInsets.all( 5.0),
                 child: ListTile(
                   leading: Icon(
                       Icons.password,
                       size: 35.0,
                       color:Color.fromARGB(255, 174, 103, 199),
                 ),
                   title:
                   Text(
                       'Password: 12345678',
                       style: TextStyle(
                         color: Colors.teal[900],
                         fontFamily: 'Assin',
                         fontSize:20.0,


                       ),



                     ),


                     ),
                     

                 ),
                ),
            
      ],
            ),
          ),
        ),
      ),

      
    );
  }
}

List<BoxShadow> Shadow = [
  BoxShadow(color: Colors.grey[200]!, blurRadius: 10, offset: Offset(0, 12))
];
