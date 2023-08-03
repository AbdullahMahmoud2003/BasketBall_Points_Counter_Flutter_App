import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0, teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "TEAM A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          teamAPoints.toString(),
                          style: TextStyle(fontSize: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 1;
                              });
                            },
                            child: Text(
                              "ADD 1 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            child: Text(
                              "ADD 2 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                            },
                            child: Text(
                              "ADD 3 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        Text(
                          "TEAM B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          teamBPoints.toString(),
                          style: TextStyle(fontSize: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints++;
                              });
                            },
                            child: Text(
                              "ADD 1 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                            },
                            child: Text(
                              "ADD 2 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                            },
                            child: Text(
                              "ADD 3 POINT",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(100, 50)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                "RESET",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(100, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
