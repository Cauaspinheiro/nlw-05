import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final bool isSelected;
  final ValueChanged<bool> onTap;
  final bool disabled;

  AnswerWidget({
    required this.answer,
    required this.onTap,
    this.isSelected = false,
    this.disabled = false,
  });

  Color get _selectedColorRight =>
      answer.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      answer.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: GestureDetector(
        onTap: () {
          onTap(answer.isRight);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: isSelected ? _selectedColorCardRight : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(BorderSide(
                    color: isSelected
                        ? _selectedBorderCardRight
                        : AppColors.border))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    answer.title,
                    style: isSelected
                        ? _selectedTextStyleRight
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color:
                            isSelected ? _selectedColorRight : AppColors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.fromBorderSide(BorderSide(
                            color: isSelected
                                ? _selectedBorderRight
                                : AppColors.border))),
                    width: 24,
                    height: 24,
                    child: isSelected
                        ? Icon(
                            _selectedIconRight,
                            color: AppColors.white,
                            size: 16,
                          )
                        : null)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
