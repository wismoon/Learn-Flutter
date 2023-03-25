import 'package:flutter/material.dart';
import 'package:navigation_flutter/Pages/page1.dart';

class myPage2 extends StatelessWidget {
  const myPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        //leading: Container(),
      ),
      body: Center(
        child: Text("Ini Page 2", style: TextStyle(fontSize: 35),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Goto Page1");
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}