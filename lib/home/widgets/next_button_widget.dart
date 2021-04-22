import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final VoidCallback onTap;

  NextButtonWidget({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    required this.onTap,
  });

  NextButtonWidget.primary({required this.label, required this.onTap})
      : this.backgroundColor = AppColors.darkGreen,
        this.textColor = AppColors.white,
        this.borderColor = AppColors.darkGreen;

  NextButtonWidget.secondary({required this.label, required this.onTap})
      : this.backgroundColor = AppColors.white,
        this.textColor = AppColors.grey,
        this.borderColor = AppColors.border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: borderColor),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
