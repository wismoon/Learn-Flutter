import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "TEXT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text field usage"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                TextField(
                  //controller memegang kendali data dari sebuah text field
                  controller: myController,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      hasil = value;
                    });
                  },
                  onSubmitted: (value) {
                    print(value);
                  },
                  onEditingComplete: () {
                    print("object");
                  },
                ),
                Text(hasil)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Fitur Text field -> dekorasi"),
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: TextField(
//               autocorrect: false,
//               //cursor can be resize with height, width, radius
//               showCursor: true,
//               cursorColor: Colors.redAccent,
//               textAlign: TextAlign.start,
//               textAlignVertical: TextAlignVertical.center,
//               textCapitalization: TextCapitalization.none,

//               style: TextStyle(
//                 color: Colors.redAccent,
//                 fontSize: 20,
//               ),

//               decoration: InputDecoration(
//                 icon: Icon(
//                   Icons.person,
//                   size: 35,
//                 ),
                
//                 //border can be sytled when being clicked and stanby
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(
//                   Icons.person_add,
//                   size: 20,
//                 ),

//                 //prefix is adding some text or icon infront of the lable and suffix adding some text or icon behind the lebale
//                 prefixText: "Name...",
//                 hintText: "please type your name!",
//                 labelText: "Name"
//               ),

//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Text Field"),
//           ),
//           body: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextField(
//                 //autocorrect: false,
//                 autofocus: true,
//                 // enableSuggestions: true, auto correct words for android users
//                 // enableInteractiveSelection: false, enabling for user interaction like hold the text field to use some command
//                 // enabled: false, enable or disabling text field
//                 // obscureText: true, making text field securing inputed words to making it become one character and can be set what character
//                 // keyboardType: TextInputType.number, make typing keyboard set to certain condition like phone number only
//                 // readOnly: true, make text field for readonly 
//               ),
//               ),
//           ),
//         ),
//     );
//   }
// }