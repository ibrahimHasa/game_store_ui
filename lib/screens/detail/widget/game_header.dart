import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class GameHeader extends StatelessWidget {
  final Game game;
  const GameHeader(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                game.type,
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              Row(
                children: [
                  buildIconText(
                      game.score.toString(), Icons.star, Colors.amber),
                  SizedBox(
                    width: 40,
                  ),
                  buildIconText('${game.score.toString()} K',
                      Icons.file_download_outlined, Colors.red)
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildIconText(String text, IconData icon, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
