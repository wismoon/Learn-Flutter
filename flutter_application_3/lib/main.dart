import 'package:flutter/material.dart';
import 'package:faker/faker.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Chatwidget(
              imageUrl: "https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ), 
      ),
    );
  }
}

class Chatwidget extends StatelessWidget {

  //using '?' for explicit null mean that parameter can be null
  final String? imageUrl;
  final String? title;
  final String? subtitle;

  const Chatwidget({
    Key? key, this.imageUrl, this.title, this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl as String),
      ),
      title: Text(title as String),
      subtitle: Text(subtitle as String),
      trailing: Text("10:00 PM"),
    );
  }
}