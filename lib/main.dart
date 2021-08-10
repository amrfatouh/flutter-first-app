import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var questions = [
    {
      "question": "What is your favourite color?",
      "answers": [
        {"answer": "black", "score": 10},
        {"answer": "red", "score": 5},
        {"answer": "green", "score": 3},
        {"answer": "white", "score": 1},
      ],
    },
    {
      "question": "What is your favourite animal?",
      "answers": [
        {"answer": "rabbit", "score": 10},
        {"answer": "snake", "score": 5},
        {"answer": "bear", "score": 3},
        {"answer": "lion", "score": 1},
      ],
    },
    {
      "question": "What is your favourite instructor?",
      "answers": [
        {"answer": "Ninja", "score": 10},
        {"answer": "Traversy", "score": 5},
        {"answer": "Grider", "score": 3},
        {"answer": "Max", "score": 1},
      ],
    },
  ];

  int questionIndex = 0;
  int totalScore = 0;

  void handleTab(int score) {
    setState(() {
      totalScore += score;
      questionIndex++;
    });
  }

  void restart() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, questionIndex, totalScore, handleTab)
            : Result(totalScore, restart),
      ),
    );
  }
}
