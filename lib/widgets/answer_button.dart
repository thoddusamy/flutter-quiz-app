import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        answerText,
        style: GoogleFonts.happyMonkey(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
