import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: 'Caua',
      photoUrl: 'https://avatars.githubusercontent.com/u/56241309?s=60&v=4',
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
          title: 'Question 1',
          questionsAnswered: 2,
          questions: [
            QuestionModel(title: 'Question', answers: [
              AnswerModel(title: 'A'),
              AnswerModel(title: 'B', isRight: true),
              AnswerModel(title: 'C'),
              AnswerModel(title: 'D'),
            ]),
            QuestionModel(title: 'Question', answers: [
              AnswerModel(title: 'A'),
              AnswerModel(title: 'B', isRight: true),
              AnswerModel(title: 'C'),
              AnswerModel(title: 'D'),
            ]),
            QuestionModel(title: 'Question', answers: [
              AnswerModel(title: 'A'),
              AnswerModel(title: 'B', isRight: true),
              AnswerModel(title: 'C'),
              AnswerModel(title: 'D'),
            ]),
          ],
          logo: AppImages.blocks,
          level: Level.easy),
    ];

    state = HomeState.success;
  }
}
