import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DMWidget extends StatelessWidget {
  const DMWidget({super.key, this.textAlign = TextAlign.start});
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign!,
      text: TextSpan(
        text: "Nitin",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: "Gamechi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
