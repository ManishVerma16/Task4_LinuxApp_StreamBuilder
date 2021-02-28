// import 'package:LinuxApp/output_screen.dart';
// import 'package:LinuxApp/output_screen_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:LinuxApp/dear_output_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:http/http.dart" as http;


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String command;
  String url = 'http://192.168.43.191/cgi-bin/linuxApp.py';
  var data;
  final _firestore = FirebaseFirestore.instance;

  Future getOutput(String command) async {
    http.Response response = await http.get('$url?x=$command');
    print('response code:${response.statusCode}');
    data = response.body;
  }

  toastFun(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 18.0);
  }

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
                width: 2.0,
                color: Colors.red,
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      child: Image(image: AssetImage('images/linux_logo2.jpg',),),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Any Command',
                      hintStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 22.0,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      fillColor: Colors.red,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      letterSpacing: 2.5,
                    ),
                    onChanged: (value) {
                      command = value;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green,
                    elevation: 5.0,
                    child: MaterialButton(
                      minWidth: 150.0,
                      child: Text(
                        'See Output',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        if (command != null) { 
                          // async
                        //   // await getOutput(command);
                          await _firestore.collection('commandAndOutput').add({
                            'command': command,
                            'output': "command testing data on Jan 09, 2020", 
                            // data,
                          });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return OutputPage(command);
                              // return OutputPageMain('ls -l');
                            },
                          ),
                        );
                        } else {
                          toastFun('Enter any commmand to see the output');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
