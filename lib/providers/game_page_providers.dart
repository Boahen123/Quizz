import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GamePageProvider extends ChangeNotifier {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://opentdb.com/api.php',
  ));

  List? questions;
  int index = 0;
  final BuildContext context;
  GamePageProvider({required this.context}) {
    _getQuestion();
  }

  Future<void> _getQuestion() async {
    var response = await _dio.get('',
        queryParameters: <String, dynamic>{
          'amount': 10,
          'difficulty': 'easy',
          'type': 'boolean'
        },
        options: Options(responseType: ResponseType.json));

    var data = response.data;
    questions = data['results'];
    // call notifyListeners() to update the UI
    notifyListeners();
  }

  String getQuestionText() {
    return questions![index]['question'];
  }

  void getQuestionAnswer(String answer) {
    bool isCorrect = questions![index]['correct_answer'] == answer;
    index++;
    print(isCorrect ? "Correct" : "Wrong");
    notifyListeners();
    // return isCorrect;
  }
}
