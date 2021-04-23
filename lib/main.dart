import './quiz.dart';
import './result.dart';
import './answer.dart';
import './question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionsText': 'What\'s your favorite colors?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 15},
        {'text': 'Blue', 'score': 25},
        {'text': 'Orange', 'score': 10},
      ],
    },
    {
      'questionsText': 'What\'s your favorite animals?',
      'answer': [
        {'text': 'Cat', 'score': 15},
        {'text': 'Dog', 'score': 5},
        {'text': 'Bird', 'score': 10},
        {'text': 'Lion', 'score': 20},
      ],
    },
    {
      'questionsText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 5},
      ],
    },
  ];
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('The question is true');
    } else {
      print('The question is finish..');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
