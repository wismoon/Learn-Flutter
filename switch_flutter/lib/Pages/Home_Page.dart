import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool StatusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          
          children: [
            
              SwitchListTile(
                activeColor: Colors.green[400],
                inactiveThumbColor: Colors.red[400],
        
                value: StatusSwitch, 
                onChanged: ((value) {
                  setState(() {
                    StatusSwitch = !StatusSwitch;
                  });
                })),
            Text(
              (StatusSwitch == false) ? "Tekan saya" : "Sudah Ditekan", 
              style: TextStyle(fontSize: 34),),
          ],
        ),
      ),
    );
  }
}