import 'package:flutter/material.dart';
import 'package:quizz/widgets/game_title.dart';
import 'package:quizz/widgets/slider.dart';
import 'package:quizz/widgets/start_button.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight, deviceWidth;

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          gameTitle(deviceHeight, deviceWidth),
          SliderWidget(deviceHeight),
          StartButton(deviceHeight, deviceWidth)
        ],
      ),
    );
  }
}
