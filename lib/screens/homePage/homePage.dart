import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upgradegame/screens/topUpPgae/topUpPage.dart';
import 'package:upgradegame/services/Provider/gameDataProvide.dart';

import 'package:upgradegame/widgets/homepage/gameList.dart';

class MyHomePage extends StatelessWidget {
  static const String id = 'myhomepage';

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
                  Provider.of<Data>(context, listen: false).gameName =
                      'Call of Duty';
                  Provider.of<Data>(context, listen: false).coverPath =
                      'assets/images/cover/cod.jpg';
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
              child: GestureDetector(
                onTap: () {
                  print('Clicked');
                  Provider.of<Data>(context, listen: false).gameName = 'PUBG';
                  Provider.of<Data>(context, listen: false).coverPath =
                      'assets/images/cover/pubg.jpg';
                  Navigator.pushNamed(context, Topup.id);
                },
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
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print('Clicked');
            Provider.of<Data>(context, listen: false).gameName = 'Free Fire';
            Provider.of<Data>(context, listen: false).coverPath =
                'assets/images/cover/fire.jpg';
            Navigator.pushNamed(context, Topup.id);
          },
          child: GameList(
            title: 'Free Fire',
            img: Image.asset(
              'assets/images/avater/fire.png',
              height: 500,
            ),
            bgColor: Colors.pink,
            boxShadoColor: Colors.green,
          ),
        ),
      ],
    ));
  }
}
