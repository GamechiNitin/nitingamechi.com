import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.kH3,
            AppColors.kH3,
            // AppColors.kH4,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   color: AppColors.kWhiteColor,
          //   padding: const EdgeInsets.all(16),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Container(
          //         decoration: AppDecoration.kNueShadowDecoration,
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(300),
          //           child: Image.asset(
          //             AppAssets.kProfile,
          //             width: 50,
          //             height: 50,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Image.asset(
          //             AppAssets.kGithub,
          //             height: 50,
          //             width: 50,
          //           ),
          //           const SizedBox(width: 5),
          //           Image.asset(
          //             AppAssets.kGithub,
          //             height: 50,
          //             width: 50,
          //           ),
          //           const SizedBox(width: 5),
          //           Image.asset(
          //             AppAssets.kGithub,
          //             height: 50,
          //             width: 50,
          //           ),
          //           const SizedBox(width: 5),
          //           Image.asset(
          //             AppAssets.kGithub,
          //             height: 50,
          //             width: 50,
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(width: kToolbarHeight),
          Padding(
            padding: const EdgeInsets.all(16),
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
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  AppString.kAboutSubtitle,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
