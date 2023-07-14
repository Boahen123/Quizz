import 'package:flutter/material.dart';
import 'package:quizz/providers/game_page_providers.dart';

Widget questionText(GamePageProvider? pageProvider) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text(
      pageProvider!.getQuestionText(),
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
