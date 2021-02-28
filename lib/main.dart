import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:LinuxApp/screens/first_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  
  await Firebase.initializeApp();
  runApp(LinuxApp());
}

class LinuxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
