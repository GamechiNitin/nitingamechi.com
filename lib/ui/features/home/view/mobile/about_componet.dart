import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.kAboutMe,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            AppString.kAboutTile,
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
              color: AppColors.kBlueColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            AppString.kAboutSubtitle,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
