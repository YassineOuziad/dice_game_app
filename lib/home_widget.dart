import 'package:dice_game_app/dice_page.dart';
import 'package:dice_game_app/image_and_voice.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    const HomePage(),
    const DiceGame(),
    const ImageVoice()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 6, 124),
        title: const Center(
          child: Text('Funny App'),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        selectedItemColor: const Color.fromARGB(255, 91, 6, 124),
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
