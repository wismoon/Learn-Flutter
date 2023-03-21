import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                //autocorrect: false,
                autofocus: true,

              ),
              ),
          ),
        ),
    );
  }
}