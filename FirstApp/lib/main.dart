import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    // backgroundColor: const Color(0x0045d1fd),
                    backgroundColor: Colors.blue,
                    // leading: BackButton(onPressed: (){ },color: Colors.white, ),
                    leading: IconButton(
                      icon: const Icon(IconData(0xe093,
                          fontFamily: 'MaterialIcons',
                          matchTextDirection: true)),
                      onPressed: () {},
                    ),
                    title: const Text(
                      "My First App",
                      style: TextStyle(color: Colors.white),
                    ),
                    centerTitle: true,
                    actions: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          icon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                            children: [
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
                  body: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/logos/flutter.png',
                                height: 200, width: 200),
                            Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue, width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'User Name',
                                            hintText: 'Enter Your Name',
                                            prefixIcon: const Icon(Icons.email)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue, width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            labelText: 'Password',
                                            hintText: 'Enter Password',
                                            prefixIcon: const Icon(Icons.lock)),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue, // background color
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      onPressed: () {},
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(25),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't have an account? ",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "SignUp!",
                                            style: TextStyle(
                                                fontSize: 16, color: Colors.red),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ))))));
}
