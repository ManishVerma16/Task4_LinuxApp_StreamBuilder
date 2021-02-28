// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:flash_chat/constants.dart';

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final _firestore = FirebaseFirestore.instance;
//   final _auth = FirebaseAuth.instance;
//   String messageText;
//   User loggedInUser;
//   String text;
//   @override
//   void initState() {
//     super.initState();
//     getCurrentUser();
//   }

//   void getCurrentUser() async {
//     final user = await _auth.currentUser;
//     if (user != null) {
//       loggedInUser = user;
//       print(loggedInUser.email);
//     }
//   }

//   void getMessages() async {
//     final messages = await _firestore.collection('messages').get();
//     for (var message in messages.docs) {
//       print(message.data());
//       text = message.data()['text'];
//       print('text: $text');
//       print(message.data()['sender']);
//     }
//   }

//   // void messageStream() async {
//   //  await for (var snapshot in _firestore.collection('messages').snapshots()) {
//   //    for (var message in snapshot.docs) {
//   //     print(message.data());
//   //     print(message.data()['text']);
//   //     print(message.data()['sender']);
//   //   }
//   //  }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: null,
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(Icons.close),
//               onPressed: () {
//                 //Implement logout functionality
//                 getMessages();
//               }),
//         ],
//         title: Text('⚡️Chat'),
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
//                 ),
//               ),
//               //kMessageContainerDecoration,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   Expanded(
//                     child: TextField(
//                       onChanged: (value) {
//                         //Do something with the user input.
//                         messageText = value;
//                       },
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         hintText: 'Type your message here...',
//                         border: InputBorder.none,
//                       ),
//                       //kMessageTextFieldDecoration,
//                     ),
//                   ),
//                   FlatButton(
//                     onPressed: () {
//                       //Implement send functionality.
//                       _firestore.collection('messages').add({
//                         'text': messageText,
//                         'sender': loggedInUser.email,
//                         //"testuser@gmail.com",
//                       });
//                     },
//                     child: Text(
//                       'Send',
//                       style: TextStyle(
//                         color: Colors.lightBlueAccent,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                       ),
//                       //kSendButtonTextStyle,
//                     ),
//                   ),
//                   Container(
//                     child: Text(
//                       text,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
