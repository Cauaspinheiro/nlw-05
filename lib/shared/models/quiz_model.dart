import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { easy, medium, hard, expert }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String logo;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      required this.logo,
      required this.level,
      this.questionsAnswered = 0});
}
