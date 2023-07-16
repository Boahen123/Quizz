import 'package:flutter/material.dart';
import 'package:quizz/providers/game_page_providers.dart';
import 'package:quizz/widgets/ui.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Object? difficultyLevel = ModalRoute.of(context)!.settings.arguments;
    Map difficultyMap = difficultyLevel as Map;
    double? deviceHeight, deviceWidth;

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    print(difficultyMap['difficulty']);
    return ChangeNotifierProvider(
        create: (context) => GamePageProvider(
            context: context, difficulty: difficultyMap['difficulty']),
        child: buildUI(deviceHeight, deviceWidth));
  }
}
