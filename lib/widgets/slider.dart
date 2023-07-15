import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double? deviceHeight;
  const SliderWidget(this.deviceHeight, {super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: widget.deviceHeight! * 0.01),
        child: const Text('slider'));
  }
}
