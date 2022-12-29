import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
        title: Text(
          'Profile',
        ),
        backgroundColor: Color(0xffc93300),
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
                  height: 190,
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1168369629/photo/happy-smiling-african-american-child-girl-yellow-background.jpg?s=612x612&w=0&k=20&c=qNP1LnRN6n_pGDBkD3axUdh1V1R53pdWWymHAhgNZag='),
                ),
                SizedBox(
                  height: h / 175,
                ),
                Text(
                  'Harper',
                  style: GoogleFonts.mukta(fontSize: 24),
                ),
                Text(
                  "harper@gmail.com",
                  style: GoogleFonts.firaSans(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: h / 300,
                ),
                Text(
                  "+91 9876541230",
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: h / 40,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: w / 20, vertical: h / 55),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor sed incididunt ut labore.',
                      style: GoogleFonts.frankRuhlLibre(
                          fontWeight: FontWeight.w100),
                    ),
                    height: h / 10,
                    width: w / 1.2,
                    decoration: BoxDecoration(
                        boxShadow: Shadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15))),
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
