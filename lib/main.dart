import 'package:fitezo/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          key: _scaffoldKey,
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
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40.0,
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Fitezo',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
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
              InkWell(
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white70,
                  ),
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
