import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GamePageProvider extends ChangeNotifier {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://opentdb.com/api.php',
  ));

  List? questions;
  int index = 0;
  int correctScore = 0;
  String difficulty;
  final BuildContext context;
  GamePageProvider({required this.context, required this.difficulty}) {
    _getQuestion(difficulty);
  }

  Future<void> _getQuestion(String difficulty) async {
    print(difficulty);
    var response = await _dio.get('',
        queryParameters: <String, dynamic>{
          'amount': 10,
          'difficulty': 'easy',
          'type': 'boolean'
        },
        options: Options(responseType: ResponseType.json));

    var data = response.data;
    print(data);
    questions = data['results'];
    // call notifyListeners() to update the UI
    notifyListeners();
  }

  String getQuestionText() {
    return questions![index]['question'];
  }

  void moveToNextPage() {
    Navigator.pop(context);
  }

  void getQuestionAnswer(String answer) async {
    bool isCorrect = questions![index]['correct_answer'] == answer;
    correctScore += isCorrect ? 1 : 0;
    index++;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: isCorrect ? Colors.green : Colors.red,
              title: Icon(
                isCorrect ? Icons.check_circle : Icons.cancel_sharp,
                color: Colors.white,
                size: 30,
              ),
              content: Text(
                isCorrect ? 'Correct' : 'Wrong',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ));
        });
    await Future.delayed(const Duration(seconds: 1));
    moveToNextPage();
    if (index == 9) {
      endGame();
    } else {
      notifyListeners();
    }
  }

  Future<void> endGame() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            title: const Text(
              "End Game",
              style: TextStyle(color: Colors.white),
            ),
            content: Text('Score: $correctScore/10'),
          );
        });
    await Future.delayed(const Duration(seconds: 2));
    moveToNextPage();
  }
}
