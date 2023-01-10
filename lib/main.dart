import 'package:fitezo/Profile.dart';
import 'package:fitezo/fitDiet.dart';
import 'package:fitezo/login.dart';
import 'package:fitezo/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

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
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Fitezo",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color(0xff8485e5),
            ),
            body:
                // Container(
                //   width: double.infinity,
                //   height: 500,
                //   child: Center(
                //       child: Text(
                //     "Welcome",
                //     style: TextStyle(fontSize: 30),
                //   )),
                // ),
                // home: const Splash(),
                Mainscreen()));
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const Login(),

      splashIconSize: 300.0,
      splashTransition: SplashTransition.scaleTransition,
      splash: Image.asset(
        'assets/pragya1.png',
        height: 200.0,
        width: 200.0,
      ),
      backgroundColor: Color.fromARGB(255, 252, 251, 253),
      duration: 3000,
      //
      // backgroundColor: Color.fromARGB(19, 150, 213, 229),
    );
  }
}
