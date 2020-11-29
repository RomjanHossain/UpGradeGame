import 'package:flutter/material.dart';

class Pofile extends StatefulWidget {
  Pofile({Key key}) : super(key: key);

  @override
  _PofileState createState() => _PofileState();
}

//df

class _PofileState extends State<Pofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [2, 1, 0.5, 2],
          colors: [
            Color(0xff202442),
            Color(0xff502BA0),
            Color(0xff592C5A),
            Color(0xff25294A),
            //Color(0xffA8A8d6)
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 60.0, 0.0, 0.0),
              child: Text('MyProfile'),
            ),
            Container(
              width: double.infinity,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/pic-2.jpg"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Name",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    elevation: 5.0,
                    child: Container(
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff2D325A),
                          Color(0xff4C61AB),
                          //Color(0xff502BA0),
                          //Color(0xff592C5A),
                          //Color(0xffA8A8d6)
                        ],
                      )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 22.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Coin",
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "100",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Coin",
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "100",
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Coin",
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "100",
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
