// import 'package:LinuxApp/chat_screen.dart';
// import 'package:LinuxApp/output_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/material.dart';

// class TestScreen extends StatefulWidget {
//   @override
//   _TestScreenState createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   String email;
//   String password;
//   final _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 24.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               child: Image.asset('images/linux_logo2.jpg'),
//               height: 200.0,
//             ),
//             SizedBox(
//               height: 45.0,
//             ),
//             TextField(
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(
//                 hintText: 'Enter your email',
//                 contentPadding: EdgeInsets.symmetric(
//                   vertical: 10.0,
//                   horizontal: 20.0,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(25.0),
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.amber,
//                     width: 2.0,
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20.0),
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(35.0),
//                   ),
//                 ),
//               ),
//               onChanged: (value) {
//                 email = value;
//               },
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             TextField(
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//                 contentPadding: EdgeInsets.symmetric(
//                   vertical: 10.0,
//                   horizontal: 20.0,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20.0),
//                   ),
//                   borderSide: BorderSide(
//                     color: Colors.amber,
//                     width: 2.0,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                   borderSide: BorderSide(
//                     color: Colors.green,
//                     width: 1.5,
//                   ),
//                 ),
//               ),
//               onChanged: (value) {
//                 password = value;
//               },
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 16.0,
//               ),
//               child: Material(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(30.0),
//                 ),
//                 elevation: 5.0,
//                 color: Color(0xff0581CC),
//                 child: MaterialButton(
//                   onPressed: () async {
//                     try {
//                       final newUser =
//                           await _auth.createUserWithEmailAndPassword(
//                         email: email,
//                         password: password,
//                       );
//                       if (newUser != null) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ChatScreen(),
//                             // OutputPage(
//                             //   'TestPage with registration',
//                             // ),
//                           ),
//                         );
//                       }
//                     } catch (e) {
//                       print(e);
//                     }
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: Text(
//                     'Register',
//                     style: TextStyle(
//                       fontSize: 25.0,
//                       fontFamily: 'Pacifico',
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
