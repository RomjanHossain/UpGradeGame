import 'dart:ui';

import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  final String title;
  final Image img;
  final Color bgColor;
  final Color boxShadoColor;
  GameList({
    this.title,
    this.img,
    this.bgColor,
    this.boxShadoColor,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      // overflow: Overflow.visible,
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Transform.rotate(
          angle: -.1,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 2,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  bgColor,
                  Colors.tealAccent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: boxShadoColor.withAlpha(60),
                  blurRadius: 10,
                  spreadRadius: 8,
                  offset: Offset(
                    0.0,
                    3.0,
                  ),
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(80),
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(30),
              ),
            ),
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        img,
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 30,
              letterSpacing: .5,
              wordSpacing: .5,
              foreground: Paint()
                ..color = Colors.blue
                ..invertColors = false
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..blendMode = BlendMode.multiply,
            ),
          ),
        ),
      ],
    );
  }
}
