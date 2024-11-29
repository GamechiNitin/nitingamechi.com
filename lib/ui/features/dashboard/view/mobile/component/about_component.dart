import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';
import 'package:shimmer/shimmer.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GlassMorphism(
        blur: 10,
        color: AppColors.kFrostedGlassColor,
        // bcolor: AppColors.kWhite40Color,
        border: true,
        opacity: 0.3,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.kDefaultColor,
                      highlightColor: AppColors.kWhiteColor,
                      child: Text(
                        AppString.kAboutMe,
                        style: AppTextStyles.getHeadline(
                          color: AppColors.kWhiteColor,
                          scaleFactor: 20,
                          context: context,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppString.kAboutSubtitle2,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              GlassMorphism(
                blur: 10,
                color: AppColors.kBlueColor,
                opacity: 0.2,
                borderRadius: BorderRadius.circular(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AppAssets.nitin,
                    height: 250,
                    width: 280,
                    fit: BoxFit.cover,
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
