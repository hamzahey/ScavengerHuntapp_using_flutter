// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagepage.dart';
import 'package:flutter_application_1/imagepage2.dart';
import 'package:flutter_application_1/imagepage3.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page7.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
  var id = "pegasus";
  Future login() async {
    print(id);
    print(password);
    // Work for lockers
    var lockKey = value.substring(0, 2);
    // obtain shared preferences
    final prefs = await SharedPreferences.getInstance();
    final locker = prefs.getString('unlockNextFrom_page6') ?? "";
    if (password.text == id || locker == lockKey) {
      // set value
      await prefs.setString('unlockNextFrom_page6', lockKey);
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

  bool _showImage = false;
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
        title: Text("Solve the clue"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
            ),
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
                    label: Text("password", style: TextStyle(fontSize: 20.0))),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _showImage = !_showImage;
                      });
                    },
                    child: Text("Toggle Map"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
            // Conditionally render the image
            if (_showImage) Image.asset("${abc[value]}"),
          ],
        )),
      ),
    );
  }
}
