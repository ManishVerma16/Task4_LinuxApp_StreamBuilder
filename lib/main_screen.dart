// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   String cmd;
//   final _firestore = FirebaseFirestore.instance;
//   final _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         //       child: Container(
//         //   child: Text('Test'),
//         //   color: Colors.red,
//         // ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               //Text('testing')
//               TextField(
//                 //keyboardType: TextInputType.emailAddress,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   //Do something with the user input.
//                   cmd = value;
//                   print(cmd);
//                 },
//                 decoration: InputDecoration(
//                   hintText: 'Enter command',
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide:
//                         BorderSide(color: Colors.blueAccent, width: 1.0),
//                     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide:
//                         BorderSide(color: Colors.blueAccent, width: 2.0),
//                     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 8,
//                   ),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: FlatButton(
//                   color: Colors.blue,
//                   textColor: Colors.white,
//                   disabledColor: Colors.grey,
//                   disabledTextColor: Colors.black,
//                   padding: EdgeInsets.all(8.0),
//                   splashColor: Colors.blueAccent,
//                   onPressed: ()  {
//                     print(cmd);
//                     _firestore.collection('aaa').add({
//                       'text': cmd,
//                     });
//                   },
//                   child: Text(
//                     "Flat Button",
//                     style: TextStyle(color: Colors.black, fontSize: 30),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// /*
// logi ho gya mera kaam ye firebase vala? step by step copy karo okok mein chlta hu fir  okthik h thnku chal pagal kaam karo
// karo abb dheere copy pa
// String cmd;
//   final _firestore = FirebaseFirestore.instance; 
//   final _auth = FirebaseAuth.instance;

//  SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Text('testing')
//             ],
//           ),
//         ),
//       ),

// TextField(
//                   //keyboardType: TextInputType.emailAddress,
//                   textAlign: TextAlign.center,
//                   onChanged: (value) {
//                     //Do something with the user input.
//                     cmd = value;
//                   },
//                   decoration: InputDecoration(
//                     hintText: 'Enter command',
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Colors.blueAccent, width: 1.0),
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Colors.blueAccent, width: 2.0),
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                   )
//                   // kInputDecoration.copyWith(hintText: 'enter your email'),
//                   ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 8,
//                   ),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: FlatButton(
//                   color: Colors.blue,
//                   textColor: Colors.white,
//                   disabledColor: Colors.grey,
//                   disabledTextColor: Colors.black,
//                   padding: EdgeInsets.all(8.0),
//                   splashColor: Colors.blueAccent,
//                   onPressed: () async {
//                     // print(cmd);
//                     // _firestore.collection('aaa').add({
//                     //   'text':cmd,

//                     try {
//                       final newUser = await _auth.checkActionCode(cmd);
//                     } catch (e) {
//                       Exception(e);
//                     }
//                   },
//                   child: Text(
//                     "Flat Button",
//                     style: TextStyle(color: Colors.black, fontSize: 30),
//                   ),
//                 ),
//               ),

// */
