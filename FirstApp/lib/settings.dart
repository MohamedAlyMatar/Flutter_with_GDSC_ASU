import 'package:firstapp/register.dart';
import 'package:firstapp/signin.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.lightBlue,
            leading: IconButton(
              icon: const Icon(IconData(0xe093,
                  fontFamily: 'MaterialIcons', matchTextDirection: true)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              "Settings",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.question_mark))
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) => SizedBox(
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/logos/fin.png'),
                                    ),
                                    Text("Hey, How are you?")
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text("Open Bottom bar")),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text("Alert"),
                                content: const Text("take care, stay hydrated"),
                                actions: [
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text("Cancel")),
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text("OK")),
                                ],
                              ),
                            );
                          },
                          child: Text("Open Dialog")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class showDialog extends StatefulWidget {
//   const showDialog({Key? key}) : super(key: key);
//
//   @override
//   State<showDialog> createState() => _showDialogState();
// }
//
// class _showDialogState extends State<showDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: () => showDialog<String>(
//           context: context,
//           builder: (BuildContext: context) => AlertDialog(
//
//     ),
//
//     ), child: null,
//     );
//   }
// }
