import 'package:flutter/material.dart';
import 'package:quizz/providers/game_page_providers.dart';

Widget falseButton(
    double? deviceHeight, double? deviceWidth, GamePageProvider? pageProvider) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
    ),
    child: SizedBox(
      width: deviceWidth! * 0.70,
      height: deviceHeight! * 0.07,
      child: TextButton(
        onPressed: () {
          pageProvider!.getQuestionAnswer('False');
        },
        child: const Text(
          'False',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}
