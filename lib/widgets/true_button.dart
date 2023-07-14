import 'package:flutter/material.dart';
import 'package:quizz/providers/game_page_providers.dart';

Widget trueButton(
    double? deviceHeight, double? deviceWidth, GamePageProvider? pageProvider) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.green,
    ),
    margin: EdgeInsets.only(bottom: deviceHeight! * 0.01),
    child: SizedBox(
      width: deviceWidth! * 0.70,
      height: deviceHeight * 0.07,
      child: TextButton(
        onPressed: () {
          pageProvider!.getQuestionAnswer('True');
        },
        child: const Text(
          'True',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}
