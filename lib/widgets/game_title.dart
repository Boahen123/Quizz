import 'package:flutter/material.dart';

Widget gameTitle(double? deviceHeight, double? deviceWidth, double difficulty) {
  List<String> difficultyList = ['Easy', 'Medium', 'Hard'];
  return Container(
    padding: EdgeInsets.symmetric(horizontal: deviceHeight! * 0.01),
    child: Column(
      children: [
        Center(
            child: Column(
          children: [
            const Text(
              'Quizz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              difficultyList[difficulty.toInt()],
              style: const TextStyle(
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
