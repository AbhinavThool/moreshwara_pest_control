import 'package:flutter/material.dart';
import 'package:moreshwara_pest_control/Screens/homepage.dart';
import 'package:moreshwara_pest_control/Screens/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}




//whatspp code 
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'WhatsApp Message Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController contactController = TextEditingController();

//   void _sendMessage() async {
//     String name = nameController.text;
//     String contact = contactController.text;

//     // Format the message with the provided data
//     String message = "Name: $name\nContact No: $contact";

//     // Construct the WhatsApp URL with the formatted message
//     String url = "https://wa.me/8329421541/?text=${Uri.encodeComponent(message)}";

//     // Launch the WhatsApp URL
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WhatsApp Message Demo'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: contactController,
//               decoration: InputDecoration(
//                 labelText: 'Contact No',
//               ),
//             ),
//             SizedBox(height: 32.0),
//             ElevatedButton(
//               onPressed: _sendMessage,
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
