import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/providers/game_page_providers.dart';
import 'package:quizz/widgets/true_button.dart';
import 'package:quizz/widgets/question_text.dart';
import 'package:quizz/widgets/false_button.dart';

Widget buildUI(double? deviceHeight, double? deviceWidth) {
  GamePageProvider? pageProvider;
  return Builder(builder: (context) {
    // Access the provided data
    pageProvider = Provider.of<GamePageProvider>(context);
    if (pageProvider!.questions == null) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Quizz',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.deepPurple[200],
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: deviceHeight! * 0.01),
              child: gameUI(deviceHeight, deviceWidth, pageProvider),
            ),
          ),
        ),
      );
    }
  });
}

Widget gameUI(
    double? deviceHeight, double? deviceWidth, GamePageProvider? pageProvider) {
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          questionText(pageProvider),
          Column(
            children: [
              trueButton(deviceHeight, deviceWidth, pageProvider),
              falseButton(deviceHeight, deviceWidth, pageProvider),
            ],
          ),
        ]),
  );
}
