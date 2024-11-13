import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';
import 'package:rive/rive.dart' as rive;
import 'package:shimmer/shimmer.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';

import '../../mobile/component/social_component.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    if (!DeviceInfo(context).isMobile && !DeviceInfo(context).isSmallMobile) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).width * 0.05),
                  Text(
                    "Namaste, I'm",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Nitin Gamechi",
                    style: AppTextStyles.getHeadline(
                      context: context,
                      color: AppColors.kDarkGrey1Color,
                      scaleFactor: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: AppColors.kWhiteColor,
                    highlightColor: Colors.blueAccent,
                    child: Text(
                      'Software Developer',
                      style: AppTextStyles.getHeadline(
                        context: context,
                        color: AppColors.kWhiteColor,
                        scaleFactor: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppString.kIntro,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  const SocialComponent(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.width / 4,
            // height: 120,
            child: const rive.RiveAnimation.asset(
              AppAssets.kDash,
            ),
          ),
        ],
      );
    } else {
      return Column(
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
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "Nitin Gamechi",
                        style: AppTextStyles.getHeadline(
                          context: context,
                          color: AppColors.kDarkGrey1Color,
                          scaleFactor: 18,
                          fontWeight: FontWeight.w500,
                        ),
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
              style: AppTextStyles.getHeadline(
                context: context,
                color: AppColors.kWhiteColor,
                scaleFactor: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            AppString.kIntro,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14,
                ),
          ),
          const SocialComponent(),
        ],
      );
    }
  }
}
