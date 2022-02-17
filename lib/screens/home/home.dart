import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';
import 'package:game_store/screens/home/widgets/category.dart';
import 'package:game_store/screens/home/widgets/header.dart';
import 'package:game_store/screens/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [Header(), Search(), Category()],
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      // color: Color(0xfff6f8ff),
      color: Colors.white60,

      child: Container(
        // decoration: BoxDecoration(boxShadow: [
        //   BoxShadow(
        //       // color: Colors.grey.withOpacity(.2),
        //       spreadRadius: 5,
        //       blurRadius: 10),
        // ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: kPrimary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              buildItem('Applicaion', Icons.more_horiz_outlined),
              buildItem('Film', Icons.play_arrow_rounded),
              buildItem('Book', Icons.auto_stories_rounded),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildItem(String text, IconData icon) {
    return BottomNavigationBarItem(
      label: text,
      icon: Container(
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icon,
          size: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}
