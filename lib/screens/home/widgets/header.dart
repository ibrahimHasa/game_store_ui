import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcom,',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'what would you like to play ?',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
