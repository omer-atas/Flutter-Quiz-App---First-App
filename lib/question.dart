import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionsText;

  Question(String questionsText) {
    this.questionsText = questionsText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
