import 'package:flutter/material.dart';
import 'package:fitezo/list.dart';


final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
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
    return SafeArea(
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
        body:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Builder(
                  builder: (context) {
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
                  }
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


      ),
    );
  }
}
