// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/imagepage3.dart';

import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page4.dart';

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
  var id = "12345";
  Future login() async {
    print(id);
    print(password);
    if (password.text == id) {
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Enter a Password"),
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
      ),
    );
  }
}
