import 'package:flutter/material.dart';
import 'package:game_store/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: kPrimary,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: kPrimary,
                size: 30,
              ),
              hintText: 'Search Game',
              hintStyle:
                  TextStyle(fontSize: 15, color: Colors.grey.withOpacity(0.7)),
            ),
          ),
          Positioned(
            bottom: 6,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kPrimary),
              child: Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
