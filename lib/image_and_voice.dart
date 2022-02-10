import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ImageVoice extends StatefulWidget {
  const ImageVoice({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ImageVoice();
}

class _ImageVoice extends State<ImageVoice> {
  final diceImages = <String>[
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];
  final noise = <String>[
    'assets/v1.wav',
    'assets/v2.wav',
    'assets/v3.wav',
    'assets/v4.wav',
    'assets/v5.wav',
    'assets/v6.wav',
  ];
  AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onDoubleTap: () {
                      player.play(noise[index]);
                    }, // Image tapped
                    child: Image.asset(diceImages[index]),
                  );

                  /*Container(
                    child: Image.asset(diceImages[index]),
                  );*/
                }))));
  }
}
