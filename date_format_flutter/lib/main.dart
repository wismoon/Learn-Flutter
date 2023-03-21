import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
            style: TextStyle(
              fontSize: 25
            ),
          ),)
        ),
    );
  }
}
