import 'package:flutter/material.dart';
import 'package:routes_flutter/Pages/gallery_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const nameRoute = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
          print("klik");
        }),
        child: Icon(Icons.arrow_right),
        ),
    );
  }
}