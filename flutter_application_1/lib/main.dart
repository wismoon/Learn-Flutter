
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget")
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.cyan,
            child: Image(
              image: AssetImage("images/Tehe.png"),
              //image: NetworkImage("https://picsum.photos/200/300")
            ),
          )
        ),
      ),
    );
  }
}