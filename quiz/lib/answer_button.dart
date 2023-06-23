import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    Key? key,
    required this.answerText,
    required this.onTap,
  }) : super(key: key);

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      width: double.infinity,
      height: 65.0,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(0.0),
        ),
        child: Ink(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 27, 180, 203),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(15.0),
            child: Center(
              child: Text(
                answerText,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(fontSize: 17.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
