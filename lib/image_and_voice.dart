import 'package:flutter/material.dart';

class ImageVoice extends StatefulWidget {
  const ImageVoice({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ImageVoice();
}

class _ImageVoice extends State<ImageVoice> {
  final diceImages = <String>[
    'images/w1.png',
    'images/w2.png',
    'images/w3.png',
    'images/w4.png',
    'images/w5.png',
    'images/w6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return Container(
                    child: Image.asset(diceImages[index]),
                  );
                }))));
  }
}
