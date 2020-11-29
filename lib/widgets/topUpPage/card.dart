import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        child: Stack(
          children: [
            Align(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}

class GameCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                '1,500',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/consts/coins.png',
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFF29758),
                        Color(0xFFEF5D67),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 88.0,
                      minHeight: 36.0,
                    ),
                    // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: Text(
                      '25tk or 1000ti',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
