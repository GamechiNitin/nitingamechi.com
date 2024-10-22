import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GlassMorphism(
        blur: 10,
        color: AppColors.kFrostedGlassColor,
        bcolor: AppColors.kWhite40Color,
        border: true,
        opacity: 0.3,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.kAboutMe,
                style: GoogleFonts.poppins(
                  color: AppColors.kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 1,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                AppString.kAboutSubtitle2,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
