import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 0, 20, 99),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 20, 99)))
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class InstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instructions"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "From the homepage proceed to the avatars page by clicking the arrow on the bottom left of your screen"),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "Each team has been assigned a specific character from 'Cyberpunk'. Select your designated character"),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "The map you have to follow will be displayed. Proceed by tapping on to next"),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "You will be given a clue. You have to figure out the clue and reach the location"),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "Once at the location, a designated individual will enter the password, unlocking the next clue"),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text(
                        "If at any point you want to checkout your map again just click on the display button"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/SBXlogo.png"),
              height: 25,
              width: 25,
            ),
            SizedBox(width: 10),
            Text(
              "SCIENCE BEE' X",
              style: TextStyle(
                  color: Color.fromARGB(255,255,175,0),
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text(
                  " Welcome to ",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255,255,175,0),
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    "                Sci Run",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255,255,175,0),
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "As its name speaks for itself, Sci-Run is a race against time where the participants skills to analyze, deduce and act will be assessed in the toughest of environments. With the clock ticking at every moment, the participants will have to work as a team and bring out the best of their skills in these two hours or else face the horror of defeat. SciRun will take you from a seminar hall to other locations in NUST where you will find exciting challenges.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstructionPage(),
                    ),
                  );
                },
                child: const Text("Instructions"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AvatarPage(),
              ));
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
