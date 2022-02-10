import 'package:dice_game_app/dice_page.dart';
import 'package:dice_game_app/image_and_voice.dart';
import 'package:dice_game_app/placeholder_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    const PlaceholderWidget(),
    const DiceGame(),
    const ImageVoice()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 72, 141, 232),
        title: const Center(
          child: Text('Dice App 2D'),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        selectedItemColor: const Color.fromARGB(255, 72, 141, 232),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_rounded),
            label: 'Würfeln',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Bilder & Töne',
          )
        ],
      ),
    ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
