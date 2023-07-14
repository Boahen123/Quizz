import 'package:flutter/material.dart';
import 'package:quizz/providers/game_page_providers.dart';
import 'package:quizz/widgets/ui.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double? deviceHeight, deviceWidth;

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
        create: (context) => GamePageProvider(context: context),
        child: buildUI(deviceHeight, deviceWidth));
  }
}
