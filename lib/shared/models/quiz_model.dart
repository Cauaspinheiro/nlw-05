import 'dart:convert';

import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { easy, medium, hard, expert }

extension LevelStringExt on String {
  Level get parse => {
        "easy": Level.easy,
        "medium": Level.medium,
        "hard": Level.hard,
        "expert": Level.expert
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.easy: "easy",
        Level.medium: "medium",
        Level.hard: "hard",
        Level.expert: "expert"
      }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String logo = AppImages.blocks;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      required this.level,
      this.questionsAnswered = 0});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionsAnswered': questionsAnswered,
      'logo': logo,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionsAnswered: map['questionsAnswered'] ?? 0,
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
