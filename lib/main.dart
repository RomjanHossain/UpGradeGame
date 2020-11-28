import 'package:flutter/material.dart';
import 'package:upgradegame/screens/homePage/homePage.dart';
import 'package:upgradegame/screens/initPage/signInPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: SignInPage.id,
      routes: {
        SignInPage.id: (context) => SignInPage(),
        MyHomePage.id: (context) => MyHomePage(),
      },
    );
  }
}
