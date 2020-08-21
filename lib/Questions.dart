import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qustions;
  Question(this.qustions);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
              child: Text(
              this.qustions, style: TextStyle(fontSize: 25),
              ),
    );
  }
}