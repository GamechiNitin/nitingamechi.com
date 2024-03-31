import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:nitingamechi/utils/theme/app_decoration.dart';

import 'social_button_widget.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor.withOpacity(0.05),
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.kNueShadowDecoration,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.asset(
                      AppAssets.kProfile,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SocialButtonWidget(
                  label: "Nitin Gamechi",
                  assetsPath: AppAssets.kDash1,
                )
              ],
            ),
          ),
          const SizedBox(width: kToolbarHeight),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About me",
                  style: GoogleFonts.crimsonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  "Transforming ideas and wireframe \ninto applications.",
                  style: GoogleFonts.crimsonText(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.2,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Experienced Software [Flutter] Developer within 2.5+ years, skilled in crafting elegant mobile apps using Flutter, Dart, Firebase, Socket.IO and Golang. Proficient in GitHub for version control, and efficient build/deployment with Fastlane and Jenkins. Focused on design, user experiences, and collaborative, high- quality solutions.",
                  style: GoogleFonts.crimsonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
