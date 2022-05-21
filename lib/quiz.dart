import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questionText: questions[questionIndex]["questionText"]),
      ...(questions[questionIndex]["answers"]).map(
        (answer) => Answer(
          onTap: () => answerQuestion(answer["score"]),
          answerText: answer["text"],
        ),
      ),
    ]);
  }
}
