import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indexQs = 0;
  int _score = 0;

  List<Map<String, Object>> newqs = [
    {
      "questionText": "1 + 1 = ?",
      "answer": ["2", "3", "4", "5"],
      "correct": "2"
    },
    {
      "questionText": "Màu ngôi sao trên quốc kỳ Việt Nam là màu gì?",
      "answer": ["Xanh", "Đỏ", "Tím", "Vàng"],
      "correct": "Vàng"
    },
    {
      "questionText": "550 / 2 = ?",
      "answer": ["275", "225", "250", "285"],
      "correct": "275"
    }
  ];

  void _aswQuestions(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      _indexQs++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _indexQs = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First app'),
        ),
        body: _indexQs < newqs.length
            ? Quiz(
                answerQuestions: _aswQuestions,
                indexQs: _indexQs,
                questions: newqs)
            : Result(
                resetHandle: _resetQuiz,
                score: _score,
              ),
      ),
    );
  }
}
