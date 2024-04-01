import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/widget/about_componet.dart';
import 'package:nitingamechi/ui/features/home/widget/experience_componet.dart';
import 'package:nitingamechi/ui/features/home/widget/home_component.dart';
import 'package:nitingamechi/ui/features/home/widget/menu_text_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MenuTextWidget(label: AppString.kHome),
            SizedBox(width: size30),
            MenuTextWidget(label: AppString.kAboutMe),
            SizedBox(width: size30),
            MenuTextWidget(label: AppString.kSkills),
            SizedBox(width: size30),
            MenuTextWidget(label: AppString.kWork),
            SizedBox(width: size30),
            MenuTextWidget(label: AppString.kExperience),
            SizedBox(width: size30),
          ],
        ),
        actions: [
          Switch(
            value: false,
            inactiveThumbColor: AppColors.kErrorColor,
            inactiveTrackColor: AppColors.kLightErrorColor,
            onChanged: (onChanged) {},
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.kBlackColor),
            ),
            child: const Text(AppString.kDownloadResume),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: const SingleChildScrollView(
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
