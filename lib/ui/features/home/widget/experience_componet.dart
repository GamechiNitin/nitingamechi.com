import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(size50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppString.kExperience,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            AppString.kAboutTile,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: size20),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: AppDecoration.kExpShadowDecoration,
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  collapsedIconColor: AppColors.kBlackColor,
                  iconColor: AppColors.kPrimaryColor,
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  dense: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kodehash',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '21 June 2023 - Present',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  children: [
                    const Divider(
                      height: 5,
                      thickness: 0.9,
                      color: AppColors.kHintColor,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          color: AppColors.kBlackColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Gurugram, Haryana, India',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        const SizedBox(width: 50),
                        const Icon(
                          Icons.link,
                          color: AppColors.kBlackColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'https://kodehash.com',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Engaged in Flutter UI/UX development with Material Design, crafting intricate interfaces, layout & widget. \nUsing advance state management like Bloc & other plugin for effective data-flow and application logic. \nIntegrating back-end services through REST-API calls and WebSocket, prioritizing robust error handling. \nFollowing SDLC systematic process for planning, creating, testing, deploying, and maintaining software applications. \nDeveloped and contributed in 5 different app’s.",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
