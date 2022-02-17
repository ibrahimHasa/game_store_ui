import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/screens/detail/widget/game_descreption.dart';
import 'package:game_store/screens/detail/widget/game_gallery.dart';
import 'package:game_store/screens/detail/widget/game_header.dart';
import 'package:game_store/screens/detail/widget/game_review.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GameHeader(game),
          GameGallery(game),
          GameDescreption(game),
          GameReview(game),
        ],
      ),
    );
  }
}
