import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/about_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/home_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/project_component.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: (!DeviceInfo(context).isMobile &&
                  !DeviceInfo(context).isSmallMobile &&
                  !DeviceInfo(context).isTablet)
              ? const EdgeInsets.symmetric(horizontal: 80)
              : const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
            ),
            gradient: Theme.of(context).brightness == Brightness.dark
                ? null
                : const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.kH1,
                      AppColors.kH1,
                      // AppColors.kWhiteBGColor,
                      AppColors.kH11,
                      AppColors.kH11,
                    ],
                  ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeComponent(),
              AboutComponent(),
              ExperienceComponent(),
              ProjectComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
