// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagepage.dart';
import 'package:flutter_application_1/imagepage2.dart';
import 'package:flutter_application_1/imagepage3.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page7.dart';

class Page6 extends StatefulWidget {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  Page6({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  }) : super(key: key);

  @override
  State<Page6> createState() => _Page6State(
      value: value,
      clue1: clue1,
      clue2: clue2,
      clue3: clue3,
      clue4: clue4,
      clue5: clue5);
}

class _Page6State extends State<Page6> {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  _Page6State({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  });

  TextEditingController password = TextEditingController();
  var id = "12345";
  Future login() async {
    print(id);
    print(password);
    if (password.text == id) {
      print("true");
      if (value != "Judy Alvarez" && value != "Victor Vector") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page7(
                value: value,
                clue1: clue1,
                clue2: clue2,
                clue3: clue3,
                clue4: clue4,
                clue5: clue5),
          ),
        );
      }
      if (value == "Judy Alvarez") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page8(
                value: value,
                clue1: clue1,
                clue2: clue2,
                clue3: clue3,
                clue4: clue4,
                clue5: clue5),
          ),
        );
      }
      if (value == "Victor Vector") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page9(
                value: value,
                clue1: clue1,
                clue2: clue2,
                clue3: clue3,
                clue4: clue4,
                clue5: clue5),
          ),
        );
      }
      if (value == "Evelyn Parker") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page10(
                value: value,
                clue1: clue1,
                clue2: clue2,
                clue3: clue3,
                clue4: clue4,
                clue5: clue5),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter a Password"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(clue4,
            textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                  // border: OutlineInputBorder(), 
                  label: Text("password", style: TextStyle(fontSize: 20.0))),
            obscureText: true,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                login();
              },
              child: Text("Next"),
            ),
          )
        ],
      )),
    );
  }
}
