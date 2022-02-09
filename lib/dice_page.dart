import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            // ignore: avoid_print
            onPressed: () => print('something for now'),
            child: Image.asset(
              'image/path',
              scale: 1.0,
              bundle: null,
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            // ignore: avoid_print
            onPressed: () => print('something for now'),
            child: Image.asset(
              'image/path',
              scale: 1.0,
              bundle: null,
            ),
          ),
        )
      ],
    ));
  }
}
