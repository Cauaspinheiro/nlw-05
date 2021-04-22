import 'package:dev_quiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int questionsLength;
  final int currentQuestion;
  final double percent;

  const QuestionIndicatorWidget({
    Key? key,
    required this.questionsLength,
    required this.currentQuestion,
  })   : percent = currentQuestion / questionsLength,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão $currentQuestion'),
              Text('de $questionsLength'),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(value: percent)
        ],
      ),
    );
  }
}
