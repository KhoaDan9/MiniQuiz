import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indexQs;
  final Function answerQuestions;

  const Quiz({
    super.key,
    required this.questions,
    required this.indexQs,
    required this.answerQuestions,
  });

  void _answerQuestions(String answer) {
    String correctAnswer = questions[indexQs]['correct'].toString();
    answer == correctAnswer ? answerQuestions(true) : answerQuestions(false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        children: [
          Question(
            questionText: questions[indexQs]['questionText'].toString(),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            padding: const EdgeInsets.all(30),
            childAspectRatio: (10 / 3),
            children: [
              ...(questions[indexQs]['answer'] as List<String>).map((answer) {
                return Answer(
                  answer: answer,
                  selectedHandler: () => _answerQuestions(answer),
                );
              }),
            ],
          )
        ],
      ),
    );
  }
}
