import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleTab;
  final String answerText;
  Answer(this.answerText, this.handleTab);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: handleTab,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
