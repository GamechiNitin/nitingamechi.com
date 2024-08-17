import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.kExperience,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: size20),
          ListView.separated(
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              // margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  tilePadding: EdgeInsets.zero,
                  // collapsedIconColor: AppColors.kBlackColor,
                  iconColor: AppColors.kPrimaryColor,
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  dense: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kodehash',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 12,
                                ),
                      ),
                      Text(
                        '21 June 2023 - Present',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 10,
                                ),
                      ),
                    ],
                  ),
                  children: [
                    Divider(
                      thickness: 0.9,
                      height: 1,
                      color: Theme.of(context).hintColor,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          size: 16,
                          // color: AppColors.kBlackColor,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            'Gurugram, Haryana, India',
                            maxLines: 1,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.link,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'https://kodehash.com',
                          maxLines: 1,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Engaged in Flutter UI/UX development with Material Design, crafting intricate interfaces, layout & widget. Using advance state management like Bloc & other plugin for effective data-flow and application logic. Integrating back-end services through REST-API calls and WebSocket, prioritizing robust error handling. Following SDLC systematic process for planning, creating, testing, deploying, and maintaining software applications. Developed and contributed in 5 different app’s.",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 12,
                          ),
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
