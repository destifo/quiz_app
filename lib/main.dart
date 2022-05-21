import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map> questions = const [
    {
      "questionText": "What's your fav color",
      "answers": [
        {"text": "Blue", "score": 9},
        {"text": "Black", "score": 8},
        {"text": "White", "score": 1},
        {"text": "Green", "score": 3},
        {"text": "Red", "score": 5}
      ],
    },
    {
      "questionText": "What's your fav anime",
      "answers": [
        {"text": "Koe no Kotachi", "score": 1},
        {"text": "Black Clover", "score": 3},
        {"text": "Naruto", "score": 2},
        {"text": "Your Lie in April", "score": 2},
        {"text": "AOT", "score": 3},
      ]
    },
    {
      "questionText": "What's your fav food",
      "answers": [
        {"text": "Spagehtti", "score": 9},
        {"text": "Soba", "score": 7},
        {"text": "Ramen", "score": 3},
        {"text": "Shekela Tebes", "score": 2},
        {"text": "Okonomiyaki", "score": 1}
      ]
    },
  ];

  void answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print("Answer chosen");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print("Quiz reseted");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: (_questionIndex < questions.length)
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_resetQuiz, _totalScore),
      ),
    ));
  }
}
