import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answersToButton;
  final answer;
  Answer(this.answersToButton, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
       RaisedButton(
        color: Colors.blue[600],
        textColor: Colors.white70,
        child: Text(
          this.answer,style: TextStyle(fontSize: 20),
        ),
        onPressed:()=> answersToButton(this.answer),
      ),
    );
  }
}