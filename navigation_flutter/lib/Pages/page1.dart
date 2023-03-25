import 'package:flutter/material.dart';
import './page2.dart';

class myPage1 extends StatelessWidget {
  const myPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Text("Ini Page 1", style: TextStyle(fontSize: 35),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Goto Page 2");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) {
                return myPage2();
              })));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}