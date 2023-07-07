import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class description extends StatefulWidget {
  description({Key? key}) : super(key: key);

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
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
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "text",
                style: TextStyle(color: Colors.lime, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ExpansionTile(
                  leading: const Icon(Icons.contact_mail),
                  title: const Text(
                    "name:",
                    // c.name,
                    style: TextStyle(color: Colors.orange, fontSize: 15),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                  children: const [
                    Text("Number: "),
                    Text("Email: "),
                    Text("Address")
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
