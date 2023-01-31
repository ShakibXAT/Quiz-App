import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions2;

  Question(this.questions2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(25),
      child: Text(
        questions2,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
