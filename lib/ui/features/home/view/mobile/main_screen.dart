import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/about_componet.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_componet.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

import 'home_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kH1,
        elevation: 0,
        leadingWidth: 275,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 16),
          child: RichText(
            text: TextSpan(
              text: '< ',
              style: Theme.of(context).textTheme.labelMedium,
              children: [
                TextSpan(
                  text: 'N',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.kBlueAccentColor,
                      ),
                ),
                TextSpan(
                  text: 'itin',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(
                  text: 'Gamechi',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextSpan(
                  text: ' />',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
        // title: const Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     MenuTextWidget(label: AppString.kHome),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kAboutMe),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kSkills),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kWork),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kExperience),
        //     SizedBox(width: size30),
        //   ],
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.downloading_sharp,
              color: AppColors.kBlackColor,
              size: 28,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeComponent(),
            AboutComponent(),
            ExperienceComponent(),
          ],
        ),
      ),
    );
  }
}
