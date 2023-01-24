// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page4.dart';
import 'package:flutter_application_1/page7.dart';

class Page9 extends StatefulWidget {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  Page9({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  }) : super(key: key);

  @override
  State<Page9> createState() => _Page9State(
      value: value,
      clue1: clue1,
      clue2: clue2,
      clue3: clue3,
      clue4: clue4,
      clue5: clue5);
}

class _Page9State extends State<Page9> {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  _Page9State({
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
  var image;
  Future login() async {
    print(id);
    print(password);
    if (password.text == id) {
      print("true");
      if (value == "V") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page4(
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
            builder: (context) => Page3(
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
          Container(
            child: Image.asset("assets/image2.png"),
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
