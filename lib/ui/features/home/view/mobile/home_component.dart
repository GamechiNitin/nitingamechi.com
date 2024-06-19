import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Namaste, I'm",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "Nitin Gamechi",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: rive.RiveAnimation.asset(
                    AppAssets.kDash,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: 'A Passionate ',
                style: Theme.of(context).textTheme.titleLarge,
                children: [
                  TextSpan(
                    text: 'Software Developer',
                    style: GoogleFonts.poppins(
                      color: AppColors.kPrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text:
                        ' with 3+ years of experince creating multi-platfrom mobile application.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
