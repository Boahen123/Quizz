import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/providers/start_page_provider.dart';

class StartButton extends StatelessWidget {
  final double? deviceHeight, deviceWidth;
  const StartButton(this.deviceHeight, this.deviceWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    StartPageProvider? startProvider;
    return Builder(builder: (context) {
      List<String> difficultyLevels = ['easy', 'medium', 'hard'];
      startProvider = context.watch<StartPageProvider>();
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: SizedBox(
          width: deviceWidth! * 0.70,
          height: deviceHeight! * 0.07,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home', arguments: {
                'difficulty':
                    difficultyLevels[startProvider!.difficulty.toInt()]
              });
            },
            child: const Text(
              'Start',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      );
    });
  }
}
