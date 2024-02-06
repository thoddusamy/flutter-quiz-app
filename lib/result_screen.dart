import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map> getSummaryData() {
    final List<Map> summary = [];

    for (var i = 1; i <= selectedAnswers.length; i++) {
      summary.add({
        'question_id': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Result screen"),
          const SizedBox(height: 40),
          Column(
            children: getSummaryData().map((data) {
              return Row(
                children: [
                  Text(data['question_id']),
                ],
              );
            }).toList(),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
            ),
            child: const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
