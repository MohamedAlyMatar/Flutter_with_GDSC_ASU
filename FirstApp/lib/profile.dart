import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  String text = "Tap the krappy patty";
  Color textColor = Colors.black;

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
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.question_mark))
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                // children: myContacts.map((e) => contactCard(e)).toList()
                children: [
                  GestureDetector(
                    child: const CircleAvatar(
                      foregroundImage: NetworkImage(
                        "https://static.wikia.nocookie.net/spongebob/images/2/2f/Krusty_Krab_Training_Video_081.png",
                      ),
                      radius: 90,
                    ),
                    onTap: () {
                      setState(() {
                        text = "Now double tap";
                        textColor = Colors.red;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        text = "Good Job XD";
                        textColor = Colors.green;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        text = "Tap the krappy patty";
                        textColor = Colors.black;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
