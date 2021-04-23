import 'package:dev_quiz/challenge/challenge_page.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/home/home_controller.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/home/widgets/app_bar_widget.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button_styles.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button_widget.dart';
import 'package:dev_quiz/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getQuizzes();
    controller.getUser();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.loading)
      return Scaffold(body: Center(child: CircularProgressIndicator()));

    return Scaffold(
      appBar: AppBarWidget(user: controller.user!),
      body: Container(
        padding: EdgeInsets.only(top: 28, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: 'Fácil',
                  styles: LevelButtonStyles(
                      backgroundColor: AppColors.levelButtonFacil,
                      textColor: AppColors.levelButtonTextFacil,
                      borderColor: AppColors.levelButtonBorderFacil),
                ),
                LevelButtonWidget(
                  label: 'Médio',
                  styles: LevelButtonStyles(
                      backgroundColor: AppColors.levelButtonMedio,
                      textColor: AppColors.levelButtonTextMedio,
                      borderColor: AppColors.levelButtonBorderMedio),
                ),
                LevelButtonWidget(
                  label: 'Difícil',
                  styles: LevelButtonStyles(
                      backgroundColor: AppColors.levelButtonDificil,
                      textColor: AppColors.levelButtonTextDificil,
                      borderColor: AppColors.levelButtonBorderDificil),
                ),
                LevelButtonWidget(
                  label: 'Perito',
                  styles: LevelButtonStyles(
                      backgroundColor: AppColors.levelButtonPerito,
                      textColor: AppColors.levelButtonTextPerito,
                      borderColor: AppColors.levelButtonBorderPerito),
                ),
              ],
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: controller.quizzes!
                    .map(
                      (e) => QuizCardWidget(
                        quiz: e,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChallengePage(
                              questions: e.questions,
                              title: e.title,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
