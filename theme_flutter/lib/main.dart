import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.standard,
        // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
        // primaryColor: Color(0x1a5D4524),
        primarySwatch: Colors.green,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3, 
        //   <int, Color>{
        //     50: Color(0x1a5D4524),
        //     100: Color(0xa15D4524),
        //     200: Color(0xaa5D4524),
        //     300: Color(0xaf5D4524),
        //     400: Color(0x1a483112),
        //     500: Color(0xa1483112),
        //     600: Color(0xaa483112),
        //     700: Color(0xff483112),
        //     800: Color(0xaf2F1E06),
        //     900: Color(0xff2F1E06)
        //   })
        // primaryColor: Color(0xFF0009688),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.green,
          )
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black
        ),
      ),
    );
    
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a Text",
              style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            Text(
              "This is a Text",
              style: TextStyle(fontSize: 30)),
            SizedBox(height: 20,),  
            ElevatedButton(
              onPressed: (() {
                
              }) , 
              child: Text(
                "Button",
                style: TextStyle(fontSize: 35),))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.mediation),
      ),
    );
  }
}