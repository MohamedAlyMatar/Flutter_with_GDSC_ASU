import 'package:firstapp/products.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'classes.dart';

class garden extends StatefulWidget {
  garden({Key? key}) : super(key: key);

  @override
  State<garden> createState() => _gardenState();
}

class _gardenState extends State<garden> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.green,
            leading: IconButton(
              icon: const Icon(IconData(0xe093,
                  fontFamily: 'MaterialIcons', matchTextDirection: true)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              "Stay Healthy",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.question_mark))
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("../assets/background/pattern.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Wrap(
                  children: [
                    // items.map((item) => productCard(item)),
                    productCard(p: orange),
                    productCard(
                      p: apple,
                    ),
                    productCard(
                      p: pear,
                    ),
                    productCard(p: lemon),
                    productCard(p: strawberry),
                    productCard(p: grapefruit),
                    productCard(p: mandarin),
                    productCard(p: melons),
                    productCard(p: pinkras),
                    productCard(p: pomegranate)
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: badges.Badge(
              badgeContent: Text("7"),
              badgeStyle:
              const badges.BadgeStyle(shape: badges.BadgeShape.twitter),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
            ),
          ),
        ),
      ),
    );
  }
}
