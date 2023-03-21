import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final List<Map<String, dynamic>> mylist = [
    {
      "Name": "Wisnu",
      "Age": 24,
      "favColor": ["Black", "White", "SkyBlue","Black", "White", "SkyBlue", "White", "SkyBlue", "White", "SkyBlue"]
    },
    {
      "Name": "Fauzi",
      "Age": 24,
      "favColor": ["Black", "White", "SkyBlue"]
    }
  ];  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID Apps"),
        ),
        body: ListView(
          children: mylist.map((data) {
            List myfavcolor = data["favColor"];
            return Card(
              margin: const EdgeInsets.all(15),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        )],),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: myfavcolor.map((color) {
                        return Container(
                          color: Colors.cyan,
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 4,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(color),
                        );
                      }).toList(),),
                    )
                ]),
              ),
            );
          }).toList(),
        )
      )
    );
  }
}