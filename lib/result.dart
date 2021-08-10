import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restart;

  Result(this.totalScore, this.restart);

  String get resultText {
    if (totalScore < 10) {
      return "You are good";
    } else if (totalScore < 20) {
      return "You are about to be good";
    } else if (totalScore < 26) {
      return "You are about to be bad";
    } else {
      return "You are bad";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Quiz Ended',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
          margin: EdgeInsets.all(15),
        ),
        Container(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
          margin: EdgeInsets.all(15),
        ),
        Container(
          child: Text(
            'Total Score: ' + totalScore.toString(),
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
          margin: EdgeInsets.all(15),
        ),
        FlatButton(
          onPressed: restart,
          child: Text('Restart'),
          textColor: Colors.blue,
        ),
      ],
    );
  }
}
