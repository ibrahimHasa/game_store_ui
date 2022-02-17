import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/models/game.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Game game;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate(
      {required this.game,
      required this.expandedHeight,
      required this.roundedContainerHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(
          game.bgImg,
          width: MediaQuery.of(context).size.width,
          height: expandedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top, left: 25, right: 25),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight - roundedContainerHeight,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            // To add the horizontal line 
            alignment: Alignment.center,
            child: Container(
              width: 60,
              height: 5,
              color: kPrimary,
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
