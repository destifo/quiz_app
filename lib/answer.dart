import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() onTap;
  final String answerText;

  const Answer({Key? key, required this.onTap, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
