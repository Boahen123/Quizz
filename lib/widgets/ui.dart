import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/providers/game_page_providers.dart';

Widget buildUI(double? deviceHeight, double? deviceWidth) {
  return Builder(builder: (context) {
    // GamePageProvider? pageProvider = context.watch<GamePageProvider>();
    // Access the provided data
    GamePageProvider? pageProvider = Provider.of<GamePageProvider>(context);
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
            child: gameUI(deviceHeight, deviceWidth),
          ),
        ),
      ),
    );
  });
}

Widget gameUI(double? deviceHeight, double? deviceWidth) {
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          questionText(),
          Column(
            children: [
              trueButton(deviceHeight, deviceWidth),
              falseButton(deviceHeight, deviceWidth),
            ],
          ),
        ]),
  );
}

Widget questionText() {
  return const Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      'This is where the question text will go.',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

Widget trueButton(double? deviceHeight, double? deviceWidth) {
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
        onPressed: () {},
        child: const Text(
          'True',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget falseButton(double? deviceHeight, double? deviceWidth) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
    ),
    child: SizedBox(
      width: deviceWidth! * 0.70,
      height: deviceHeight! * 0.07,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'False',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}
