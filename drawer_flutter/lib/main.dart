import 'package:drawer_flutter/Pages/page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              color: Colors.red[500],
              alignment: Alignment.bottomLeft,
              child: Text("Menu Pilihan", style: TextStyle(fontSize: 35, color: Colors.white),),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: (() {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Page1(),)
                );
              }),
              leading: Icon(Icons.home),
              title: Text("Home", style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(fontSize: 20),),
            )
          ],

        ),
      ),
      body: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 35),)
      ),
    );
  }
}