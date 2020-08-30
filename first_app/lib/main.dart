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
        'answers':[
          {'text':'Black', 'score': 10}, 
          {'text':'Green', 'score':5}, 
          {'text':'Red', 'score':8}, 
          {'text':'Blue', 'score':7}],
      },
      {
        'questiontext':'What\'s your favourite animal?', 
        'answers':[
          {'text':'Lion', 'score': 10}, 
          {'text':'Frog', 'score': 5}, 
          {'text':'Snake', 'score': 1}, 
          {'text':'Rabbit', 'score': 10}],
      },
      {
        'questiontext':'Who\'s your favourite instructor?', 
        'answers':[
          {'text':'Max', 'score':2}, 
          {'text':'Max', 'score':2}, 
          {'text':'Max', 'score':2}, 
          {'text':'Max', 'score':2}],
      },
    ];
  var _questionindex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;  
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    
    _totalScore += score;

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
      : Result(_totalScore, _resetQuiz),
    ),);
  }
}