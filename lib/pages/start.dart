import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizz/providers/start_page_provider.dart';
import 'package:quizz/widgets/game_title.dart';
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
    return ChangeNotifierProvider<StartPageProvider>(
      create: (context) => StartPageProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Consumer<StartPageProvider>(
                builder: (context, provider, child) {
                  return gameTitle(
                      deviceHeight, deviceWidth, provider.difficulty);
                },
              ),
              Consumer<StartPageProvider>(
                builder: (context, provider, child) {
                  return provider.slider(deviceWidth);
                },
              ),
              StartButton(deviceHeight, deviceWidth)
            ],
          ),
        );
      }),
    );
  }
}
