import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final progression = .75;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: Container(
              constraints: BoxConstraints.expand(height: 70, width: 70),
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: progression,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              '${(progression * 100).toInt()}%',
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
