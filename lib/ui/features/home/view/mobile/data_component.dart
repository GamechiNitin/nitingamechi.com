import 'package:flutter/material.dart';
import 'package:nitingamechi/core/data/experience_response.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget(
      {super.key, required this.company, required this.index});
  final Company company;
  final int index;
  static List<Color> color = [
    Colors.black,
    Colors.lightBlue,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Text(
                company.position ?? '',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12,
                    ),
              ),
              const Text(" - "),
              Text(
                company.company ?? '',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12,
                    ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_sharp,
                size: 16,
                // color: AppColors.kBlackColor,
              ),
              const SizedBox(width: 4),
              Text(
                company.location ?? '',
                maxLines: 1,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: 20),
              const Icon(
                Icons.watch_later_outlined,
                size: 16,
                // color: AppColors.kBlackColor,
              ),
              const SizedBox(width: 4),
              Text(
                company.timeline ?? '',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        if (company.description != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              company.description!.length,
              (index) => Row(
                children: [
                  const CircleAvatar(
                    radius: 2,
                    backgroundColor: AppColors.kWhiteColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    company.description![index],
                    // textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
          ),
        const SizedBox(height: 8),
      ],
    );
  }
}
