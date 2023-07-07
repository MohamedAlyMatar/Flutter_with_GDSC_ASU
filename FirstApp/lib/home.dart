import 'package:firstapp/profile.dart';
import 'package:firstapp/register.dart';
import 'package:firstapp/settings.dart';
import 'package:firstapp/signin.dart';
import 'package:flutter/material.dart';

import 'contacts.dart';
import 'garden.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    // backgroundColor: const Color(0x0045d1fd),
                    backgroundColor: Colors.blue,
                    // leading: BackButton(onPressed: (){ },color: Colors.white, ),
                    // leading: IconButton(
                    //   icon: const Icon(IconData(0xe093,
                    //       fontFamily: 'MaterialIcons', matchTextDirection: true)),
                    //   onPressed: () {},
                    // ),
                    title: const Text(
                      "My First App",
                      style: TextStyle(color: Colors.white),
                    ),
                    centerTitle: true,
                    actions: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          icon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                IconData(0xe3b2,
                                    fontFamily: 'MaterialIcons',
                                    matchTextDirection: true),
                                color: Colors.white,
                              ),
                              Text(
                                'Sign In',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          icon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                IconData(0xe08c,
                                    fontFamily: 'MaterialIcons',
                                    matchTextDirection: true),
                                color: Colors.white,
                              ),
                              Text(
                                'Register',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  drawer: Drawer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: Colors.grey.shade200,
                                    child: const CircleAvatar(
                                      radius: 37,
                                      backgroundImage:
                                          AssetImage('assets/logos/fin.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Finn The Human",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        "fin@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: const ListTile(
                            leading: SizedBox(),
                            title: Text("Settings"),
                            trailing: Icon(Icons.settings),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => settings()));
                          },
                        ),
                        const Divider(),
                        InkWell(
                          child: const ListTile(
                            leading: SizedBox(),
                            title: Text("Profile"),
                            trailing: Icon(Icons.face),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => profile()));
                          },
                        ),
                        const Divider(),
                        InkWell(
                          child: const ListTile(
                            leading: SizedBox(),
                            title: Text("Favorites"),
                            trailing: Icon(Icons.star),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => contacts()));
                          },
                        ),
                        const Divider(),
                        InkWell(
                          child: const ListTile(
                            leading: SizedBox(),
                            title: Text("Magic Garden"),
                            trailing: Icon(Icons.shopping_bag_rounded),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => garden()));
                          },
                        ),
                        const Divider(),
                        const ListTile(
                          leading: SizedBox(),
                          title: Text("Help"),
                          trailing: Icon(Icons.question_mark),
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      signIn(),
                      register(),
                    ],
                  ),
                )
            )
        )
    );
  }
}
