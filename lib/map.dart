// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagepage.dart';
import 'package:flutter_application_1/imagepage2.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page4.dart';
import 'package:flutter_application_1/page5.dart';
import 'package:flutter_application_1/page7.dart';

class Page11 extends StatefulWidget {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  Page11({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  }) : super(key: key);

  @override
  State<Page11> createState() => _Page11State(
      value: value,
      clue1: clue1,
      clue2: clue2,
      clue3: clue3,
      clue4: clue4,
      clue5: clue5);
}

class _Page11State extends State<Page11> {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  _Page11State({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  });

  TextEditingController password = TextEditingController();
  Future login() async {
    if (value == "Panam Palmer") {
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
    } else if (value == "Vincent") {
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
    } else {
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

  Map<String, String> abc = {
    "Johnny Silverhand": "assets/map1.png",
    "Jackie Welles": "assets/map1.png",
    "Judy Alvarez": "assets/map2.png",
    "Panam Palmer": "assets/map2.png",
    "Victor Vector": "assets/map3.png",
    "Vincent": "assets/map3.png",
    "Kerry Eurodyne": "assets/map4.png",
    "Goro Takemura": "assets/map4.png",
    "Dum Dum": "assets/map5.png",
    "Evelyn Parker": "assets/map5.png"
  };

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
            child: Container(
              child: Image.asset("${abc[value]}"),
            ),
          ),
          SizedBox(
            height: 20.0,
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
