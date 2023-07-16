import 'package:flutter/material.dart';

class StartPageProvider extends ChangeNotifier {
  double difficulty = 0;

  Widget slider(deviceWidth) {
    return Container(
        width: deviceWidth * 0.8,
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.01),
        child: Slider(
          value: difficulty,
          onChanged: (value) {
            setState(() {
              difficulty = value;
            });
          },
          divisions: 2,
          min: 0,
          max: 2,
        ));
  }

  void setState(VoidCallback callback) {
    callback();
    notifyListeners();
  }
}
