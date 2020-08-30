import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: Text(
        questiontext,
        style:TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}