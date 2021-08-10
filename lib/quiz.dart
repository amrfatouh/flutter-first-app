import 'dart:ffi';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final int totalScore;
  final Function handleTab;

  Quiz(this.questions, this.questionIndex, this.totalScore, this.handleTab);

  @override
  Widget build(BuildContext context) {
    var answers;
    if (questionIndex < questions.length) {
      answers =
          questions[questionIndex]['answers'] as List<Map<String, dynamic>>;
    }
    return Column(children: [
      Question(questions[questionIndex]['question'] as String),
      ...answers.map((answer) {
        return Answer(answer['answer'], () => handleTab(answer['score']));
      }),
      Container(
        child: Text(
          'Total Score: ' + totalScore.toString(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        width: double.infinity,
        margin: EdgeInsets.all(15),
      ),
    ]);
  }
}
