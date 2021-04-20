import 'package:dev_quiz/challenge/widgets/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          AnswerWidget(title: 'Resposta 1'),
          AnswerWidget(
            title: 'Resposta 2',
            isSelected: true,
            isRight: true,
          ),
          AnswerWidget(title: 'Resposta 3', isSelected: true)
        ],
      ),
    );
  }
}
