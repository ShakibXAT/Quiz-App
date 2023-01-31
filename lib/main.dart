import 'dart:core';

import 'package:flutter/material.dart';
import 'package:practise_project101/quiz.dart';
import 'package:practise_project101/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore;
  void _questionAnswer(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex == 2) {
      _questionIndex = 0;
    }
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What is your favorite color?',
        'answerText': [
          {'text': 'Red', 'score': 10},
          {'text': 'Green', 'score': 5},
          {'text': 'Blue', 'score': 3},
          {'text': 'Cyan', 'score': 1}
        ]
      },
      {
        'questionText': 'What is your favorite animal?',
        'answerText': [
          {'text': 'Cat', 'score': 10},
          {'text': 'Dog', 'score': 5},
          {'text': 'Rabit', 'score': 3},
          {'text': 'Rat', 'score': 1}
        ]
      }
    ];
    //var answers = ['Red', 'Green', 'blue', 'cyan'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('This the title'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionAnswer: _questionAnswer,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Column(
                  children: [Result()],
                )),
    );
  }
}
