import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final double? deviceHeight, deviceWidth;
  const StartButton(this.deviceHeight, this.deviceWidth, {super.key});

  @override
  Widget build(BuildContext context) {
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
            Navigator.pushNamed(context, '/home');
          },
          child: const Text(
            'Start',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
