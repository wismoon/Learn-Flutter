import 'package:flutter/material.dart';

void main() {
 runApp(Myapps()); 
}

class Myapps extends StatelessWidget {
  
  final List<Color> myColor = [
    Colors.red, Colors.blue, Colors.green
  ];
  final List<Container> myList= [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
          ),
        body: ListView.separated(
          // scrollDirection: Axis.horizontal,
          //children: myList,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.orange,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index){
            return Container(
              width: 200,
              height: 200,
              color: myColor[index],
            );
          },
        ),
        ),
    );
  }
}