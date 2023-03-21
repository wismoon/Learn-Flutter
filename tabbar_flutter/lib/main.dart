import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.ac_unit_outlined),
    ),
    Tab(
      text: "Tab 2",
    ),
    Tab(
      icon: Icon(Icons.ac_unit_outlined),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: myTab.length,
        child: Scaffold(
            appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab 1", style: TextStyle(fontSize: 40),),
              ),
              Center(
                child: Text("Tab 2", style: TextStyle(fontSize: 40),),
              ),
              Center(
                child: Text("Tab 3", style: TextStyle(fontSize: 40),),
              )
            ]),
        ),
      ),
    );
  }
}

//using preferredsize untuk membuat tabbar custom size untuk tinggi dari appbar
//preferredSize: Size.fromHeight(100), child: TabBar(
