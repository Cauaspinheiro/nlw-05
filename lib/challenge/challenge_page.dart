import 'package:dev_quiz/challenge/widgets/question_indicator_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(child: QuestionIndicatorWidget()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: QuizWidget(
          title: 'Pergunta 1',
        ),
      ),
    );
  }
}
