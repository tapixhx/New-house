import 'package:flutter/material.dart';

import './question.dart';

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
      "What's your favourite color?",
      'What\'s your favourite animal?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Learning Flutter'),),
      body: Column(children: <Widget>[
        Question(
          questions[_questionindex],
        ),
        RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion,),
        RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer2!'),),
        RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion,),
      ],),
    ),);
  }
}