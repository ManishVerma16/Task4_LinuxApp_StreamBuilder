// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class OutputPageMain extends StatefulWidget {
//   OutputPageMain(this.data);
//   final data;
//   @override
//   _OutputPageMainState createState() => _OutputPageMainState();
// }

// // Both output_screen and output_screen_main are same.

// class _OutputPageMainState extends State<OutputPageMain> {
//   String outputData;
//   final _firestore = FirebaseFirestore.instance;
//   User loggedInUser;
//   String firebaseCommand;
//   String firebaseOutput;
//   String command;
//   @override
//   void initState() {
//     super.initState();
//     updateOutput(widget.data);
//     getCommandOutput();
//   }

//   void updateOutput(data) {
//     command = data;
//     print(command);
//   }

//   void getCommandOutput() async {
//     final commandOutput = await _firestore.collection('commandAndOutput').get();
//     for (var output in commandOutput.docs) {
//       firebaseCommand = output.data()['command'];
//       print(
//           'firebasecommand: $firebaseCommand and firebaseOutput: $firebaseOutput');
//       if (command == firebaseCommand) {
//         setState(() {
//           firebaseOutput = output.data()['output'];
//         });
//       }
//     }
//   }

//   toastFun(String msg) {
//     Fluttertoast.showToast(
//         msg: msg,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.green,
//         textColor: Colors.white,
//         fontSize: 18.0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     highlightColor: Colors.redAccent,
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: Icon(
//                       Icons.arrow_back,
//                       color: Colors.green,
//                       size: 35.0,
//                     ),
//                   ),
//                   Text(
//                     'Output',
//                     style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 30.0,
//                       fontFamily: 'Lobster',
//                     ),
//                   ),
//                   IconButton(
//                     highlightColor: Colors.redAccent,
//                     onPressed: () {
//                       toastFun('Error!!! \n Check The Entered Command');
//                     },
//                     icon: Icon(
//                       Icons.help,
//                       color: Colors.green,
//                       size: 30.0,
//                     ),
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 2.0,
//                       color: Colors.green,
//                     ),
//                   ),
//                   child: Text(
//                     widget.data == firebaseCommand
//                         ? firebaseOutput
//                         : 'No Output',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.red,
//                       fontFamily: 'Pacifico',
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: 2.0,
//                     ),
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
