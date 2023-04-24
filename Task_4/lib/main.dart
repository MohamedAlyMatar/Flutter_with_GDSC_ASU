import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import './products.dart';
import './classes.dart';

int counter = 7;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              onPressed: () {},
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
                image: AssetImage("assets/background/pattern.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Wrap(
                  children: [
                    // items.map((item) => productCard(item)),
                    productCard(orange),
                    productCard(apple),
                    productCard(pear),
                    productCard(lemon),
                    productCard(strawberry),
                    productCard(grapefruit),
                    productCard(mandarin),
                    productCard(melons),
                    productCard(pinkras),
                    productCard(pomegranate)
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: badges.Badge(
              badgeContent: Text("$counter"),
              badgeStyle: const badges.BadgeStyle(shape: badges.BadgeShape.twitter),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
            ),
          ),
        ),
      ),
    );
  }
}
