import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/widget/about_componet.dart';
import 'package:nitingamechi/ui/features/home/widget/home_component.dart';
import 'package:nitingamechi/ui/features/home/widget/menu_text_widget.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

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
            MenuTextWidget(label: 'Home'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'About me'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Skills'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Work'),
            SizedBox(width: 30),
            MenuTextWidget(label: 'Experience'),
            SizedBox(width: 30),
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
            child: const Text('Download Resume'),
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
          ],
        ),
      ),
    );
  }
}
