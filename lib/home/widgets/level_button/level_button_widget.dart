import 'package:dev_quiz/home/widgets/level_button/level_button_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  final LevelButtonStyles styles;

  LevelButtonWidget({required this.label, required this.styles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: styles.backgroundColor,
          border: Border.fromBorderSide(BorderSide(color: styles.borderColor))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(color: styles.textColor, fontSize: 14),
        ),
      ),
    );
  }
}
