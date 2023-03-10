// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page4.dart';
import 'package:flutter_application_1/page5.dart';
import 'package:flutter_application_1/page7.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Page10 extends StatefulWidget {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  Page10({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  }) : super(key: key);

  @override
  State<Page10> createState() => _Page10State(
      value: value,
      clue1: clue1,
      clue2: clue2,
      clue3: clue3,
      clue4: clue4,
      clue5: clue5);
}

class _Page10State extends State<Page10> {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  _Page10State({
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
  var image;
  Future login() async {
    print(id);
    print(password);
    // Work for lockers
    var lockKey = value.substring(0, 2);
    // obtain shared preferences
    final prefs = await SharedPreferences.getInstance();
    final locker = prefs.getString('unlockNextFrom_imagepage3') ?? "";
    if (password.text == id || locker==lockKey) {
      // set value
      await prefs.setString('unlockNextFrom_imagepage3', lockKey);
      print("true");
      if (value == "Dum Dum") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page5(
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Page3(
        //         value: value,
        //         clue1: clue1,
        //         clue2: clue2,
        //         clue3: clue3,
        //         clue4: clue4,
        //         clue5: clue5),
        //   ),
        // );
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
              child: Image.asset("assets/image3.png"),
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
                if (value != "Evelyn Parker")Container(
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
