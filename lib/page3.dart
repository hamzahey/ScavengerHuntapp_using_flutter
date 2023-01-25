// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagepage3.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page4.dart';

import 'package:shared_preferences/shared_preferences.dart';


class Page3 extends StatefulWidget {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  Page3({
    Key? key,
    required this.value,
    required this.clue1,
    required this.clue2,
    required this.clue3,
    required this.clue4,
    required this.clue5,
  }) : super(key: key);

  @override
  State<Page3> createState() => _Page3State(
      value: value,
      clue1: clue1,
      clue2: clue2,
      clue3: clue3,
      clue4: clue4,
      clue5: clue5);
}

class _Page3State extends State<Page3> {
  String value;
  String clue1;
  String clue2;
  String clue3;
  String clue4;
  String clue5;
  _Page3State({
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
    final locker = prefs.getString('unlockNextFrom_page3') ?? "";
    if (password.text == id || locker == lockKey) {
      // set value
      await prefs.setString('unlockNextFrom_page3', lockKey);
      print("true");
      if (value != "Dum Dum") {
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
      } else {
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
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Solve the clue"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                clue1,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
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
                    label: Text(
                  "password",
                  style: TextStyle(fontSize: 20.0),
                )),
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
