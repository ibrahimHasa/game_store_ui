import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/models/game.dart';

class NewestGame extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  NewestGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
          children: listGames
              .map(
                (e) => Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          e.icon,
                          width: 60,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.type,
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.9),
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    buildStar(),
                                  ],
                                ),
                                buildButton(),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }

  Widget buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: color
          .map((e) => Icon(
                Icons.star,
                size: 15,
                color: e,
              ))
          .toList(),
    );
  }

  Widget buildButton() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kPrimary),
      child: Text(
        'Install',
        style: TextStyle(
          color: Colors.white,
          // fontSize: 15,
        ),
      ),
    );
  }
}
