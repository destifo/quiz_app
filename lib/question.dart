import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(9),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 29),
        textAlign: TextAlign.center,
      ),
    );
  }
}
