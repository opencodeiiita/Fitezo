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
    final List conti = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Fitezo',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: conti.length,
                    itemBuilder: (context, index) {
                      return ListContainer(
                        con: conti[index],
                      );
                    }),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              // padding: const EdgeInsets.all(10),
              children: const [
                DrawerHeader(
                  child: Text(""),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("../assets/VedantFitezo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.tips_and_updates,
                    color: Color.fromARGB(255, 81, 18, 18),
                  ),
                  title: const Text('Tips'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 81, 18, 18),
                  ),
                  title: const Text('Profile'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 81, 18, 18),
                  ),
                  title: const Text('Settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
