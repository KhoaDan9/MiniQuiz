import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectedHandler;

  const Answer({
    super.key,
    required this.answer,
    required this.selectedHandler,
  });

  void _selectedHandler() {
    selectedHandler();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 79, 121, 211),
        foregroundColor: Colors.white,
      ),
      onPressed: _selectedHandler,
      child: Text(answer),
    );
  }
}
