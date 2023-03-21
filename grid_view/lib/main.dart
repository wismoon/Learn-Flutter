import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      // height: 50,
      // width: 150,
      color: Color.fromARGB(
        255, 
        Random().nextInt(255), 
        Random().nextInt(255),
        Random().nextInt(255)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        //gridview memiliki banyak jenis dan bisa langsung digunakan tampa griddelegate seperti grid count, builder, custom
        body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                crossAxisSpacing: 20, 
                mainAxisSpacing: 10,
                //childaspecration membuat grid terbagi mengikuti ratio yg di set dan tidak menggunakan lagi height dan width yang di set dari list
                childAspectRatio: 4 / 3),
                children: myList,
        ),
      ),
    );
  }
}
