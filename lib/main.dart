import 'package:flutter/material.dart';
import 'package:upgradegame/screens/homePage/homePage.dart';
import 'package:upgradegame/screens/initPage/signInPage.dart';
import 'package:upgradegame/screens/topUpPgae/topUpPage.dart';
import 'package:upgradegame/services/Provider/gameDataProvide.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Data()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        // darkTheme: ThemeData.dark(),
        initialRoute: SignInPage.id,
        routes: {
          SignInPage.id: (context) => SignInPage(),
          MyHomePage.id: (context) => MyHomePage(),
          Topup.id: (context) => Topup(),
        },
      ),
    );
  }
}
