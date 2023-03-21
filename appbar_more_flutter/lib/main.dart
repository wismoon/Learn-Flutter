
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.cyan,),
          title: Container(height: 100, color: Colors.red),
          actions: [
            Container(width: 50, color: Colors.orange,)
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(width: 50, height: 200, color: Colors.green)),
          flexibleSpace: Container(height: 100, color: Colors.white),
        ),
      ),
    );
  }
}
