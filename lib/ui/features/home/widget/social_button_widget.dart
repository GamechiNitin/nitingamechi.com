import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    required this.label,
    required this.assetsPath,
    this.onTap,
  });
  final String label, assetsPath;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.kWhiteColor,
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              offset: Offset(6, 6),
              spreadRadius: 1,
              blurRadius: 4,
            ),
            BoxShadow(
              color: AppColors.kSecondaryColor.withOpacity(0.1),
              offset: const Offset(-6, -6),
              spreadRadius: 1,
              blurRadius: 4,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.kGithub,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  AppAssets.kGithub,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  AppAssets.kGithub,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  AppAssets.kGithub,
                  height: 35,
                  width: 35,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
