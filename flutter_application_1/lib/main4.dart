
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List Tile"),),
      body: ListView(
        children: [
          ListTile(
            title: Text("Muhammad Wisnu Fauzi"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Text("10:00 PM")
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text("Muhammad Wisnu Fauzi"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Text("10:00 PM")
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text("Muhammad Wisnu Fauzi"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Text("10:00 PM")
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text("Muhammad Wisnu Fauzi"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Text("10:00 PM")
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
      ),
    );
  }
}