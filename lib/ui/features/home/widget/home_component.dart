import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:rive/rive.dart' as rive;
import 'package:shimmer/shimmer.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kBlueAccentColor.withOpacity(0.05),
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(50),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Namaste, I'm",
                  style: GoogleFonts.crimsonText(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  "Nitin Gamechi",
                  style: GoogleFonts.crimsonText(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 1.1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'A Passionate ',
                      style: GoogleFonts.crimsonText(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '<Flutter Developer/>',
                          style: GoogleFonts.crimsonText(
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            color: Colors.blue,
                            // fontStyle: FontStyle.italic,
                            letterSpacing: 1.1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' \nwith 3 years of experince creating \nmulti-platfrom mobile application.',
                          style: GoogleFonts.crimsonText(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kToolbarHeight),
                Shimmer.fromColors(
                  baseColor: Colors.black12,
                  highlightColor: Colors.white,
                  child: Text(
                    "I write Code_>",
                    style: GoogleFonts.mogra(
                      color: AppColors.kBlackColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: const Stack(
              alignment: Alignment.centerRight,
              children: [
                rive.RiveAnimation.asset(
                  AppAssets.kDash,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
