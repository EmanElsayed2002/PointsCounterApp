import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamApoints = 0, teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 430,
                    width: 200,
                    child: ListView(
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$teamApoints",
                          style: TextStyle(fontSize: 150),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, left: 8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamApoints += 1;
                                });
                              },
                              child: Text(
                                "add 1 point",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, left: 8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamApoints += 2;
                              });
                            },
                            child: Text("add 2 point",
                                style: TextStyle(color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamApoints += 3;
                                });
                              },
                              child: Text("add 3 point",
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 430,
                    width: 200,
                    child: ListView(
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$teamBpoints",
                          style: TextStyle(fontSize: 150),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamBpoints += 1;
                                });
                              },
                              child: Text(
                                "add 1 point",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints += 2;
                              });
                            },
                            child: Text("add 2 point",
                                style: TextStyle(color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, right: 8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  teamBpoints += 3;
                                });
                              },
                              child: Text("add 3 point",
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: Text("Reset", style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50),
                )),
          ],
        ),
      ),
    );
  }
}
