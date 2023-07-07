import 'package:flutter/material.dart';
import './classes.dart';

Widget contactCard(Contact c) =>
    Card(
      child: ExpansionTile(
        leading: const Icon(Icons.contact_mail),
        title: Text(
          "name: ${c.name}, \nnumber: ${c.number}, \naddress: ${c.address}, \nemail: ${c.email}",
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
        children: const [
          Text("Hello there! this is an expansion "),
          Text("XD")
        ],
      ),
    );

// Widget contactCard (Contact c) => Card(
//   child: ListTile(
//     leading: Icon(Icons.contact_mail),
//     title: Text(
//       "name: ${c.name}, \nnumber: ${c.number}, \naddress: ${c.address}, \nemail: ${c.email}",
//       // c.name,
//       style: const TextStyle(color: Colors.orange, fontSize: 15),
//     ),
//     trailing: IconButton(onPressed: () { }, icon: const Icon(Icons.add),),
//   ),
// );