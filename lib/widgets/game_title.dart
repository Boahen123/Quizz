import 'package:flutter/material.dart';

Widget gameTitle(double? deviceHeight, double? deviceWidth) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: deviceHeight! * 0.01),
    child: const Column(
      children: [
        Center(
            child: Column(
          children: [
            Text(
              'Quizz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Easy',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ],
        )),
      ],
    ),
  );
}
