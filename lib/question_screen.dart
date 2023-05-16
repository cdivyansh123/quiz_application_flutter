import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/answer_button.dart';
import 'package:flutter_projects/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
              answerText: currentQuestion.answers[0],
              onTap: () {
                //todo
              }),
          AnswerButton(
              answerText: currentQuestion.answers[1],
              onTap: () {
                //todo
              }),
          AnswerButton(
              answerText: currentQuestion.answers[2],
              onTap: () {
                //todo
              }),
          AnswerButton(
              answerText: currentQuestion.answers[3],
              onTap: () {
                //todo
              })
        ],
      ),
    );
  }
}
