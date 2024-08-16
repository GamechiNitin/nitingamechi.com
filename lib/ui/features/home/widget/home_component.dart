import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;
import 'package:shimmer/shimmer.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(size50),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Namaste, I'm",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Nitin Gamechi",
                  style: AppStyle.kH4,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.kWhiteColor,
                      highlightColor: Colors.blueAccent,
                      child: Text(
                        'Flutter Developer',
                        style: GoogleFonts.poppins(
                          color: AppColors.kWhiteColor,
                          fontSize: 70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Shimmer.fromColors(
                        baseColor: AppColors.kPrimaryColor,
                        highlightColor: Colors.black12,
                        child: Text(
                          'Flutter Developer',
                          style: GoogleFonts.poppins(
                            color: AppColors.kPrimaryColor,
                            fontSize: 70,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: '\nA Passionate ',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 24,
                          ),
                      children: [
                        TextSpan(
                          text: 'Software Developer\n',
                          style: GoogleFonts.poppins(
                            color: AppColors.kPrimaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const TextSpan(
                          text:
                              'with 3+ years of experince creating \nmulti-platfrom mobile application.',
                        ),
                      ],
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
