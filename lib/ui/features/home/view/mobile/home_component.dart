import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;
import 'package:shimmer/shimmer.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    if (!DeviceInfo(context).isMobile && !DeviceInfo(context).isSmallMobile) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Namaste, I'm",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 12,
                              ),
                        ),
                        Text(
                          "Nitin Gamechi",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Shimmer.fromColors(
                          baseColor: AppColors.kWhiteColor,
                          highlightColor: Colors.blueAccent,
                          child: Text(
                            'Software Developer',
                            style: GoogleFonts.poppins(
                              color: AppColors.kWhiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 1,
                              height: 2,
                            ),
                          ),
                        ),
                        Text(
                          AppString.kIntro,
                          textAlign: TextAlign.justify,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontSize: 16,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3.3,
                    height: MediaQuery.of(context).size.width / 3,
                    // height: 120,
                    child: const rive.RiveAnimation.asset(
                      AppAssets.kDash,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Namaste, I'm",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 12,
                              ),
                        ),
                        Text(
                          "Nitin Gamechi",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                    height: 90,
                    child: rive.RiveAnimation.asset(
                      AppAssets.kDash,
                    ),
                  ),
                ],
              ),
            ),
            Shimmer.fromColors(
              baseColor: AppColors.kWhiteColor,
              highlightColor: Colors.blueAccent,
              child: Text(
                'Software Developer',
                style: GoogleFonts.poppins(
                  color: AppColors.kWhiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 1,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              AppString.kIntro,
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
      );
    }
  }
}
