import 'package:LinuxApp/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String command;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 2.0,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'Linux App',
                        style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Image(image: AssetImage('images/linux_logo2.jpg')),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green,
                  elevation: 5.0,
                  child: MaterialButton(
                    minWidth: 150.0,
                    child: Text(
                      'Click Here To Run Command',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico', 
                        letterSpacing: 2.0,
                        color: Colors.white,  
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
