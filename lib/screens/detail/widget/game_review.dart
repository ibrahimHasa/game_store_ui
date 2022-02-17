import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/models/game.dart';

class GameReview extends StatelessWidget {
  final Game game;

  const GameReview(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ratings And Review',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'view',
                style: TextStyle(fontSize: 22, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.score.toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildStar(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${game.review}  Review',
                    style: TextStyle(
                        fontSize: 20, color: Colors.grey.withOpacity(.8)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: kPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Install',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildStar() {
    final List<Color> colors = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
        children: colors
            .map(
              (e) => Icon(
                Icons.star,
                size: 25,
                color: e,
              ),
            )
            .toList());
  }
}
