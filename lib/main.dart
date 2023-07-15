import 'package:flutter/material.dart';
import 'package:quizz/pages/home.dart';
import 'package:quizz/pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/start': (BuildContext context) => const Start(),
        '/home': (BuildContext context) => const Home(),
      },
      title: 'Quizz',
      theme: ThemeData(
        fontFamily: 'VictorMono',
        scaffoldBackgroundColor: Colors.deepPurple[900],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Start(),
    );
  }
}
