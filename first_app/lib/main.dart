import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;

  void _answerQuestion() {
    setState(() { // runs build again
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext':'What\'s your favourite color?', 
        'answers':['Black', 'Green', 'Red', 'Blue'],
      },
      {
        'questiontext':'What\'s your favourite animal?', 
        'answers':['Lion', 'Frog', 'Snake', 'Rabbit'],
      },
      {
        'questiontext':'Who\'s your favourite instructor?', 
        'answers':['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Learning Flutter'),),
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionindex]['questiontext'],
          ),
          ...(questions[_questionindex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          })
        ],
      ),
    ),);
  }
}