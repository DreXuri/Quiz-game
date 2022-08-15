import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;
  Result(this.finalScore, this.resetQuiz);

  String get scoreResult {
   String scoreText;
    if (finalScore <= 30) {
      scoreText = '❤You are in love';
    }
    if (finalScore <= 55) {
      scoreText = 'Yoruba Demon will serve you breakfast😁';
    } 
    if (finalScore  <= 65) {
      scoreText = 'You Should love yourself more';
    } 
    else {
      scoreText = 'Get your answer from the comrade🐸';
    }

    return scoreText;
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            scoreResult,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child:Text('Restart',
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.pink),
            )
            ,
             onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
