import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.kH1,
        // gradient: LinearGradient(
        //   colors: [
        //     AppColors.kH1,
        //     AppColors.kH2,
        //   ],
        // ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
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
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: rive.RiveAnimation.asset(
                    AppAssets.kDash,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: 'A Passionate ',
                style: AppStyle.kH3.copyWith(
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: 'Software Developer',
                    style: AppStyle.kH1.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' with 3 years of experince creating multi-platfrom mobile application.',
                    style: AppStyle.kH2.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
