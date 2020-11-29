import 'package:flutter/material.dart';

class GameName extends StatelessWidget {
  const GameName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Call of Duty',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Text(
              'Call of Duty',
              style: TextStyle(
                color: Colors.white.withOpacity(0.1),
                fontWeight: FontWeight.bold,
                fontSize: 56,
              ),
            ),
          ),
        )
      ],
    );
  }
}
