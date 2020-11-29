import 'package:flutter/material.dart';
import '../../models/UcPage/class-1.dart';

class Ucpurchese extends StatefulWidget {
  @override
  _UcpurcheseState createState() => _UcpurcheseState();
}

class _UcpurcheseState extends State<Ucpurchese> {
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
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('perch UC'),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: GridView.builder(
                itemCount: diamonds.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Center(
                              child: Text(
                                diamonds[index].amount,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Center(
                                    child: Text(
                                  diamonds[index].price,
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
