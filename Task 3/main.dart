import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flexible(
          child: DefaultTabController(
              length: 2,
              child: SafeArea(
                  child: Scaffold(
                      appBar: AppBar(
                        elevation: 0,
                        // backgroundColor: const Color(0x0045d1fd),
                        backgroundColor: Colors.blue,
                        // leading: BackButton(onPressed: (){ },color: Colors.white, ),
                        leading: IconButton(
                          icon: Icon(IconData(0xe093,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true)),
                          onPressed: () {},
                        ),
                        title: const Text(
                          "This is my first App",
                          style: TextStyle(color: Colors.white),
                        ),
                        centerTitle: true,
                        actions: const [
                          Icon(IconData(0xe3dc,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true)),
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
                      body: Center(
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
                                                BorderRadius.circular(20),
                                          ),
                                          labelText: 'User Name',
                                          hintText: 'Enter Your Name',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          labelText: 'Password',
                                          hintText: 'Enter Password',
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Colors.blue, // background color
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text('Sign In'),
                                      onPressed: () {},
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(25),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Dont have an account? "),
                                          Text(
                                            "Sign Up",
                                            style: TextStyle(color: Colors.red),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      )))))));
}
