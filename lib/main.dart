import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      "questionText": 'What\'s your fav color',
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": 'What\'s your favorite animal',
      "answers": ["Rabbit", "snake", "elephant", "Liom"]
    },
    {
      "questionText": 'Who is your fav instructor',
      "answers": ["Max", "Narayan", "Singh", "Yaduvanshi"]
    }
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print("We have more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App title!"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
