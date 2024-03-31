import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'social_button_widget.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor.withOpacity(0.05),
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(size50),
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
                      width: size150,
                      height: size150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SocialButtonWidget(
                  label: AppString.kNitinGamechi,
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
                  AppString.kAboutMe,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  AppString.kAboutTile,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: size20),
                Text(
                  AppString.kAboutSubtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
