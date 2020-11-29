import 'package:flutter/material.dart';
import 'package:upgradegame/screens/topUpPgae/topUpPage.dart';

import 'package:upgradegame/widgets/homepage/gameList.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'myhomepage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Column(
          children: [
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 200,
            ),
            Center(
              child: Text(
                'Choose your \nAwesome Game',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Clicked');
                  Navigator.pushNamed(context, Topup.id);
                },
                child: GameList(
                  title: 'Call Of Duty',
                  img: Image.asset(
                    'assets/images/avater/cod2.png',
                    height: 500,
                  ),
                  bgColor: Colors.red,
                  boxShadoColor: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: GameList(
                title: 'Pubg',
                img: Image.asset(
                  'assets/images/avater/pubg2.png',
                  height: 500,
                ),
                bgColor: Colors.pink,
                boxShadoColor: Colors.green,
              ),
            ),
          ],
        ),
        GameList(
          title: 'Free Fire',
          img: Image.asset(
            'assets/images/avater/fire.png',
            height: 500,
          ),
          bgColor: Colors.pink,
          boxShadoColor: Colors.green,
        ),
      ],
    ));
  }
}
