import 'package:flutter/material.dart';
import 'package:firstapp/classes.dart';
import 'package:badges/badges.dart' as badges;

import 'contact.dart';

class contacts extends StatefulWidget {
  contacts({Key? key}) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
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
              "Contacts",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.question_mark))
            ],
          ),
          body: Container(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("../assets/background/pattern.png"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: SingleChildScrollView(
              child: Center(
                child: Wrap(
                  children: [
                    // items.map((item) => productCard(item)),
                    contactCard(c1),
                    contactCard(c2),
                    contactCard(c3),
                    contactCard(c4),
                    contactCard(c5),
                    contactCard(c6),
                    contactCard(c7),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.lightBlue,
            child: badges.Badge(
              badgeContent: Text("5"),
              badgeStyle:
              const badges.BadgeStyle(shape: badges.BadgeShape.twitter),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add)),
            ),
          ),
        ),
      ),
    );
  }
}
