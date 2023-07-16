import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double? deviceHeight;
  const SliderWidget(this.deviceHeight, {super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double difficulty = 0;

  List<String> difficultyLevels = <String>['Easy', 'Medium', 'Hard'];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.deviceHeight! * 0.4,
        padding: EdgeInsets.symmetric(horizontal: widget.deviceHeight! * 0.01),
        child: Slider(
          value: difficulty,
          onChanged: (value) {
            setState(() {
              difficulty = value;
              print(value);
            });
          },
          divisions: 2,
          min: 0,
          max: 2,
        ));
  }
}
