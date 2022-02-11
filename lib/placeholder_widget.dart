import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: FittedBox(
                    child: Image.asset('assets/images/golddice.gif'),
                    fit: BoxFit.fill))));
  }
}
