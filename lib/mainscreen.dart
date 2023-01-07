import 'dart:convert';
import 'package:fitezo/fitDiet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:fitezo/list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

late Future<List<User>> futureUser;
Future<List<User>> fetchUser() async {
  final response = await http
      .get(Uri.parse('https://exercisedb.p.rapidapi.com/exercises'), headers: {
    "X-RapidAPI-Key": "9c275cc52amshe1da7cef762dc85p1ca7e2jsn103cf54be772",
    "X-RapidAPI-Host": "exercisedb.p.rapidapi.com"
  });

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<User>((json) => User.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class _MainscreenState extends State<Mainscreen> {
  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  Widget build(BuildContext context) {
    // final List conti = [
    //   '1',
    //   '2',
    //   '3',
    //   '4',
    //   '5',
    //   '6',
    //   '7',
    //   '8',
    //   '9',
    //   '10',
    //   '11',
    //   '12',
    //   '13',
    //   '14',
    //   '15',
    //   '16',
    //   '17',
    //   '18',
    //   '19',
    //   '20'
    // ];
    return SafeArea(
      // ignore: sort_child_properties_last
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            // padding: const EdgeInsets.all(10),
            children:  [
              DrawerHeader(
                child: Text(""),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/pragya1.png"),
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
                  Icons.health_and_safety,
                  color: Color.fromARGB(255, 81, 18, 18),
                ),
                title: Text('Calorie Profiles'),
               
                
                onTap: () async => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FitDiet(),
                    ),
                  ),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Builder(builder: (context) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    InkWell(
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white70,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
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
              );
            }),
            Expanded(
                child: FutureBuilder<List<User>>(
              future: futureUser,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(itemBuilder: ((context, index) {
                    return GestureDetector(
                        onTap: (() {}),
                        child: ListContainer(
                          user: snapshot.data![index],
                        ));
                  }));
                  // Text(snapshot.data!.length.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )),
          ],
        ),
      ),
    );
  }
}

class User {
  final String name, target, bodyPart, gif, id, equipment;
  User({
    required this.name,
    required this.target,
    required this.bodyPart,
    required this.gif,
    required this.id,
    required this.equipment,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      target: json['target'],
      bodyPart: json['bodyPart'],
      gif: json['gifUrl'],
      id: json['id'],
      equipment: json['equipment'],
    );
  }
}
