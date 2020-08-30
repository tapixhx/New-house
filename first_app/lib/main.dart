import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


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
  final _questions = const [
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
  var _questionindex = 0;


  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;
    

    setState(() { // runs build again
      _questionindex = _questionindex + 1;
    });
    if(_questionindex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Learning Flutter'),),
      body: _questionindex < _questions.length 
      ? Quiz(answerQuestion: _answerQuestion, questionindex: _questionindex, questions: _questions)
      : Result(),
    ),);
  }
}