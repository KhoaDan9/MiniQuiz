import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandle;
  final int score;

  const Result({super.key, required this.resetHandle, required this.score});

  void _resetHandle() {
    resetHandle();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Điểm số của bạn là: ',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Text(
                score.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              )
            ],
          ),
          TextButton(
              onPressed: _resetHandle,
              child: const Text(
                'Restart!',
                style: TextStyle(fontSize: 25),
              ))
        ],
      ),
    );
  }
}
