import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 100.0,
        widthFactor: 100.0,
        child: Image.asset('images/golddice.gif', scale: 1));
  }
}
