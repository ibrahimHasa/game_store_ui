import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/screens/detail/widget/detail.dart';

class PopularGame extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPage(listGames[index]),
                )),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(listGames[index].bgImg),
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: listGames.length),
    );
  }
}
