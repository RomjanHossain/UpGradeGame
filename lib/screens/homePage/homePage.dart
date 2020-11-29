import 'package:flutter/material.dart';
//import 'package:upgradegame/profile/profile.dart';
//import 'package:upgradegame/uc page/ucpurchase.dart';
import 'package:upgradegame/topUpPgae/topUPPage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Topup()));
      }),
    );
  }
}
