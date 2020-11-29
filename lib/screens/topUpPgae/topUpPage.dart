import 'package:flutter/material.dart';
import 'package:upgradegame/screens/topUpPgae/card.dart';
import 'package:upgradegame/screens/topUpPgae/gameName.dart';
import 'package:upgradegame/widgets/topUpPage/coverBg.dart';
import '../../models/topUpPageModels/topMod.dart';

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
                    child: GameCard(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GameCard(),
                  ),
                ),
              ],
            ),
            //? Garbage Part
            Expanded(
              child: Container(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: diamonds.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.blue.withOpacity(0.9),
                          width: 1,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff2D325A),
                                Color(0xff4C61AB),
                              ],
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              title: Center(
                                child: Text(
                                  diamonds[index].amount,
                                ),
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Center(
                                    child: Text(
                                      diamonds[index].price,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
