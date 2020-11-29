import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upgradegame/services/Provider/gameDataProvide.dart';

class CoverBG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.translate(
          offset: Offset(0, 0),
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              // ..setEntry(3, 2, 0.01)
              ..rotateY(0),
            child: Container(
              height: 216,
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, 0),
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              // ..setEntry(3, 2, 0.01)
              ..rotateY(50),
            child: Container(
              height: 188,
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                image: DecorationImage(
                  image: AssetImage(Provider.of<Data>(context).coverPath),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
