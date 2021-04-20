import 'package:dev_quiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Questão 04'),
              Text('de 200'),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(value: .8)
        ],
      ),
    );
  }
}
