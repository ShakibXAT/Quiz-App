import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler(),
        style: OutlinedButton.styleFrom(backgroundColor: Colors.cyan),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
