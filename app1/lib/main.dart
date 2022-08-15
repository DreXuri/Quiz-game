import 'dart:html';

import 'package:app1/question.dart';
import 'package:app1/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '1. What\'s the longest relationship you have been?',
      'answers': [
        {'text': '1 year', 'score': 2},
        {'text': '1-2 years', 'score': 2},
        {'text': '2-4 years', 'score': 4},
        {'text': '4 years +', 'score': 4}
      ],
    },
    {
      'questionText': '2. Did\'s your parent enjoy a healthy marriage?',
      'answers': [
        {'text': 'Very Healthy', 'score': 2},
        {'text': 'Somewhat Healthy', 'score': 4},
        {'text': 'Not so Healthy', 'score': 6},
        {'text': 'Parent Weren\'t Married ', 'score': 8}
      ],
    },
    {
      'questionText': '3. How Long have you known your partner?',
      'answers': [
        {'text': '1 Years', 'score': 2},
        {'text': '1-2 Years', 'score': 4},
        {'text': '2-4 Years', 'score': 6},
        {'text': '4 Years+', 'score': 8}
      ],
    },
    {
      'questionText':
          '4. Do your friends and family support your relationship?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'Mostly', 'score': 4},
        {'text': 'Not Quite', 'score': 6},
        {'text': 'No', 'score': 8}
      ],
    },
    {
      'questionText': '5. How well do you trust your partner?',
      'answers': [
        {'text': '100% without question', 'score': 2},
        {'text': 'Almost entirely', 'score': 5},
        {'text': 'Mostly', 'score': 6},
        {'text': 'Not really', 'score': 7},
      ],
    },
    {
      'questionText': '6. How well do you handle arguement/disagreements?',
      'answers': [
        {'text': 'Very well', 'score': 3},
        {'text': 'Mostly well', 'score': 4},
        {'text': 'Average', 'score': 5},
        {'text': 'Poorly', 'score': 9},
      ],
    },
    {
      'questionText': '7. Do you share compatible life goals?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'Mostly', 'score': 1},
        {'text': 'A Few', 'score': 1},
        {'text': 'Not really', 'score': 1},
      ],
    },
    {
      'questionText':
          '8. How would you rate the sexual chemistry with your partner?',
      'answers': [
        {'text': 'it is lit', 'score': 1},
        {'text': 'it is intense', 'score': 1},
        {'text': 'just there', 'score': 1},
        {'text': 'Don\'t worry', 'score': 1},
      ],
    },
    {
      'questionText':
          '9. How well do you cope with things that don\'t go your way?',
      'answers': [
        {'text': 'Very well', 'score': 3},
        {'text': 'Mostly well', 'score': 11},
        {'text': 'Average', 'score': 5},
        {'text': 'Poorly', 'score': 9},
      ],
    },
    {
      'questionText': '10. What kind of life outlook do you generally have?',
      'answers': [
        {'text': 'Very optimistic', 'score': 3},
        {'text': 'Somewhat optimitic', 'score': 11},
        {'text': 'Somewhat pessimictic', 'score': 5},
        {'text': 'Pessimistic', 'score': 9},
      ],
    },
    {
      'questionText': '11. Why do you want to marry?',
      'answers': [
        {'text': 'Fear of lonliness', 'score': 3},
        {'text': 'Pessure from family', 'score': 11},
        {'text': 'Pressure from partner', 'score': 5},
        {'text': 'To show commitment', 'score': 9},
      ],
    },
    {
      'questionText': '12. How well do you communicate with your partner?',
      'answers': [
        {'text': 'Very well', 'score': 3},
        {'text': 'Mostly well', 'score': 11},
        {'text': 'Average', 'score': 5},
        {'text': 'Poorly', 'score': 9},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuestion() {
    print(_totalScore);
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += 1;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_questions[_questionIndex]);

    if (_questionIndex <= _questions.length) {
      print('we have more question');
    } else {
      print(_totalScore);
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Are you ready for Love?'),
          backgroundColor: Colors.red,
          shadowColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuestion),
      ),
    );
  }
}
