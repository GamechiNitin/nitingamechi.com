import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:nitingamechi/utils/theme/app_decoration.dart';
import 'package:shimmer/shimmer.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: AppDecoration.kNueShadowDecoration,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              AppAssets.kProfile,
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Shimmer.fromColors(
          baseColor: AppColors.kPrimaryColor,
          highlightColor: AppColors.kBlueColor,
          child: Text(
            "Welcome to nitingamechi.in",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.kBlueColor,
                  fontSize: 25,
                ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
