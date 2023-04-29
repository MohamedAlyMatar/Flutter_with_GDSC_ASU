import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/logos/flutter.png',
                      height: 200, width: 200),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
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
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
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
                            child: const Text(
                              'Sign In',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Don't have an account? ",
                                  style: TextStyle(fontSize: 13, color: Colors.black, ),

                                ),
                                Text(
                                  "SignUp!",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.red),
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
        ),
      ),
    );
  }
}
