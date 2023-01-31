import 'dart:core';

import 'package:flutter/material.dart';
import 'package:practise_project101/answer.dart';
import 'package:practise_project101/question.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function questionAnswer;

  Quiz(
      {required this.questions,
      required this.questionAnswer,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answerText']
                as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
            () => questionAnswer(answer['score']) as Function,
            answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
