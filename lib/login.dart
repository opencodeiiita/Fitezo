import 'package:fitezo/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:fitezo/transitionanimation.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffFFF886),
                  Color(0xffF072B6),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/pragya1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Name',
                    ),
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        return 'The field cannot be empty.';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone Number',
                    ),
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        return 'The field cannot be empty.';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password_outlined),
                      hintText: 'Password',
                    ),
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        return 'The field cannot be empty.';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                    onPressed: () async{
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data'))

                        );
                       await Future.delayed(Duration(milliseconds: 2000));
                        // ignore: prefer_const_constructors, use_build_context_synchronously
                        Navigator.push(context, Transit(widget: Mainscreen()));
                      }
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
