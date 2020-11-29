import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "class-1.dart";
import 'package:gradient_text/gradient_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ucpurchese extends StatefulWidget {
  Ucpurchese({Key key}) : super(key: key);

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
              GradientText("Purchese UC",
                  gradient: LinearGradient(colors: [
                    Color(0xffFFEFBA),
                    Color(0xffeaafc8),
                    //Colors.purple,
                    //Colors.pink,
                    //Colors.deepOrange,
                    //Colors.purple
                  ]),
                  style: GoogleFonts.sriracha(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  )),
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
                              child: Text(diamonds[index].amount,
                                  style: GoogleFonts.rambla(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Color(0xffF4F4F6)),
                                  )),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Center(
                                    child: Text(diamonds[index].price,
                                        style: GoogleFonts.rambla(
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xffF4F4F6)),
                                        ))),
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
