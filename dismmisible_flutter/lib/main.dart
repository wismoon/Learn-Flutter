import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  MyHomepage({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dissmisible"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
        return Dismissible(
          key: Key(index.toString()),
          background: Container(
            color: Colors.red.shade400,
            child: Icon(Icons.delete, size: 25,),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10),
          ),
          // direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              print("End to Start");
            } else{
              print("Start To end");
            }
          },
          confirmDismiss: (direction) {
            return showDialog(
              context: context, 
              builder: ((context) {
                return AlertDialog(
                  title: Text("Confirm Delete"),
                  content: Text("confirm delete data"),
                  actions: [
                    ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).pop(true);
                      }), 
                      child: Text("YES")),
                    ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).pop(false);
                      }), 
                      child: Text("NO"))
                  ],
                );
              })
            );
          },
          child: ListTile(
            leading: CircleAvatar(
              child: Center(
                child: Text("$index"),
              ),
            ),
            title: Text(faker.person.name()),
            subtitle: Text(faker.lorem.sentence()),
            ),
        );
        },
      ),
    );
  }
}