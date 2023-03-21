

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
        appBar: AppBar(
          title: Text("Images Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.cyan,
            //one line image asset
            child: Image.asset("images/Tehe.png", fit: BoxFit.cover,),
            //multiple line image asset 
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage("images/Tehe.png"),
            //   //image: NetworkImage("https://picsum.photos/200/300")
            //   ),
          ),
        ),
      ),
    );
  }
}