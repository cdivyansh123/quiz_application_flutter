import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.red,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn FLutter in a fun Way!.....",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: () {
                startQuiz();
                //todo
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Start quiz")),
        ],
      ),
    );
  }
}
