import 'package:flutter/material.dart';
import 'package:upgradegame/widgets/topUpPage/card.dart';
import 'package:upgradegame/widgets/topUpPage/gameName.dart';
import 'package:upgradegame/widgets/topUpPage/coverBg.dart';

class Topup extends StatelessWidget {
  static const String id = 'topUp';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CoverBG(),
            GameName(),
            Text('Top Up'),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GameCard2(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GameCard2(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
