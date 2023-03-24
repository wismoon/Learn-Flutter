import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  MyHomepage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
          child: Text(
        data,
        style: TextStyle(fontSize: 35),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("diklik");
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("Mau di hapus?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("NO")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                          data = "YES";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Yes")),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                          data = "NO";
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("No?"))
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
