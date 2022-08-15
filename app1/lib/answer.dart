import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.zero),      
      width: 200,
      margin: EdgeInsets.fromLTRB(
        20,
        10,
        20,
        10,
      ),
      child: 
      ElevatedButton(
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 228, 116, 129)),
          shape:
        MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)))),
        onPressed: selectHandler,
      ),
      // RaisedButton(
      //   color: Color.fromARGB(255, 237, 125, 125),
      //   textColor: Colors.white,
        
      //   child: Text(answerText),
      //   onPressed: selectHandler,
      // ),
    );
  }
}


