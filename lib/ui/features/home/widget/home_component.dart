import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:rive/rive.dart' as rive;

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kBlueAccentColor.withOpacity(0.05),
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(size50),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Namaste, I'm",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Nitin Gamechi",
                  style: AppStyle.kH4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'A Passionate ',
                      style: AppStyle.kH3,
                      children: [
                        TextSpan(
                          text: '<Flutter Developer/>',
                          style: AppStyle.kH1,
                        ),
                        TextSpan(
                          text:
                              ' \nwith 3 years of experince creating \nmulti-platfrom mobile application.',
                          style: AppStyle.kH2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: const Stack(
              alignment: Alignment.centerRight,
              children: [
                rive.RiveAnimation.asset(
                  AppAssets.kDash,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
