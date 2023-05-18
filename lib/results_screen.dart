import 'package:flutter/material.dart';
import 'package:flutter_projects/data/questions.dart';
import 'package:flutter_projects/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {super.key, required this.chooseanswer, required this.onRestart});

  final List<String> chooseanswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseanswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseanswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOftoTalWuestions = questions.length;
    final numOfCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numOfCorrectQuestions out of $numOftoTalWuestions questions',
              style: TextStyle(color: Colors.cyanAccent.shade400, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            FilledButton(
                onPressed: onRestart,
                child: const Text(
                  "Restart quiz",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
