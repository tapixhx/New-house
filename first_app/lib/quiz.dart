import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(
            questions[questionindex]['questiontext'],
          ),
          ...(questions[questionindex]['answers'] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          })
        ],
      );
  }
}