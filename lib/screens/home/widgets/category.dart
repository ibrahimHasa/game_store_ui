import 'package:flutter/material.dart';
import 'package:game_store/screens/home/widgets/newest_game.dart';
import 'package:game_store/screens/home/widgets/popular_game.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);

  final list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {'icon': Icons.sports_esports, 'color': Color(0xFF7182F2), 'title': 'More'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60,
        // color: Color(	#fdfcf8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: EdgeInsets.all(25),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: list[index]['color'] as Color,
                          ),
                          child: Icon(
                            list[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          list[index]['title'] as String,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16),
                        )
                      ],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 30,
                    ),
                itemCount: list.length),
          ),
          buildTitle('Popular Game'),
          PopularGame(),
          buildTitle('Newest Game'),
          NewestGame(),
        ],
      ),
    );
  }

  Widget buildTitle(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
