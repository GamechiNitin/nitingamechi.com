import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/app_string.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

import 'glass_widget.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kWhiteColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.3,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                AppString.kSkill,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kBlackColor,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                AppString.kSkillHeadline,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kBlackColor,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                runSpacing: 30,
                spacing: 30,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceEvenly,
                children: List.generate(
                  AppAssets.imageList.length,
                  (index) => GlassMorphism(
                    blur: 10,
                    color: AppColors.kWhiteColor,
                    bcolor: AppColors.kWhite40Color,
                    border: true,
                    opacity: 0.3,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.imageList[index].$1,
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            AppAssets.imageList[index].$2,
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.kBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
