import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
              answerText: 'Answer 1',
              onTap: () {
                //todo
              }),
          AnswerButton(
              answerText: 'Answer 2',
              onTap: () {
                //todo
              }),
          AnswerButton(
              answerText: 'Answer 3',
              onTap: () {
                //todo
              })
        ],
      ),
    );
  }
}
