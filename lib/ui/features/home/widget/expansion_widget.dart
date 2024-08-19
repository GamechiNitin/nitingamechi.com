import 'package:flutter/material.dart';
import 'package:nitingamechi/core/data/experience_response.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

import 'glass_widget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.company, required this.index});
  final Company company;
  final int index;
  static List<Color> color = [
    Colors.black,
    Colors.lightBlue,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: color[index],
      opacity: 0.3,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        // margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
            title: Text(
              company.company ?? '',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                  ),
            ),
            children: [
              Divider(
                thickness: 0.9,
                height: 1,
                color: Theme.of(context).hintColor,
              ),
              const SizedBox(height: 8),
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
                      company.location ?? '',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.link,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    company.timeline ?? '',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (company.description != null)
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      company.description!.length,
                      (index) => Text(
                        company.description![index],
                        // textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 12,
                            ),
                      ),
                    )),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
