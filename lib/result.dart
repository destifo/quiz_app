import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;
  final int totalScore;

  const Result(this.resetQuiz, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You did it!\n You achived a total score of $totalScore points",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 23,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text("Play again"),
          )
        ],
      ),
    );
  }
}
