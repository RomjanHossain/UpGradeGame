import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:upgradegame/screens/homePage/homePage.dart';

class SignInPage extends StatelessWidget {
  static const String id = '/signinpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(),
          Center(child: Text('Welcome')),
          SignInButton(
            Buttons.GoogleDark,
            onPressed: () {
              Navigator.pushNamed(context, MyHomePage.id);
            },
          ),
          SignInButton(
            Buttons.FacebookNew,
            onPressed: () {},
          ),
          Text('or'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(
                Buttons.AppleDark,
                mini: true,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Reddit,
                mini: true,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Twitter,
                mini: true,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Xbox,
                mini: true,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
