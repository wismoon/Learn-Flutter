import 'package:flutter/material.dart';
import 'Pages/page1.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myPage1(),
    );
  }
}