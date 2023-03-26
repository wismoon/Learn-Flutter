import 'package:drawer_flutter/Pages/settings_page.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
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
              onTap: (() {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SettingsPage(),)
                );
              }),
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