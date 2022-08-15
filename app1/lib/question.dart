// import 'package:flutter/material.dart';

// class Question extends StatelessWidget {
//   final String questionText;

//   Question(this.questionText);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.all(10),
//       child: Text(
//         questionText,
//         style: TextStyle(fontSize: 28),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  // const Question({Key? key, this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text
        (questionText, 
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center),
    );



  }
}
