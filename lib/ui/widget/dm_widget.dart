import 'package:flutter/material.dart';

class DMWidget extends StatelessWidget {
  const DMWidget({super.key, this.textAlign = TextAlign.start});
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign!,
      text: TextSpan(
        text: "Nitin",
        style: Theme.of(context).appBarTheme.titleTextStyle,
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
