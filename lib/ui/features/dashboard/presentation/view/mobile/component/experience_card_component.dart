import 'package:flutter/material.dart';
import 'package:nitingamechi/core/data/company_model/company_model.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget({
    super.key,
    required this.company,
    required this.index,
  });
  final Company company;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Position and company name
        Row(
          children: [
            Text(
              company.position ?? '',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              " - ",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              company.company ?? '',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: 10),

        // Location and timeline
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 14,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 8),
            Text(
              company.location ?? '',
              maxLines: 1,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: 20),
            Icon(
              Icons.watch_later_outlined,
              size: 14,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 8),
            Text(
              company.timeline ?? '',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Description (with improved handling for nulls and layout issues)
        if (company.description != null && company.description!.isNotEmpty)
          ListView.builder(
            shrinkWrap: true, // Shrink-wrap the ListView to fit its content
            physics:
                const NeverScrollableScrollPhysics(), // Prevent internal scrolling
            itemCount: company.description!.length,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: AppColors.kSecondaryColor,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    // To make the Text take the available space
                    child: Text(
                      company.description?[index] ?? "",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              );
            },
          ),
        const SizedBox(height: 16),

        // Tech stack (using GlassMorphism for styling)
        Wrap(
          runSpacing: 16,
          spacing: 16,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: List.generate(
            company.stack?.length ?? 0,
            (index) => GlassMorphism(
              blur: 10,
              color: Colors.pinkAccent,
              opacity: 0.1,
              borderRadius: BorderRadius.circular(5),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Text(
                  company.stack?[index] ?? '',
                  style: AppTextStyles.getHeadline(
                    context: context,
                    color: AppColors.kDarkGrey1Color,
                    scaleFactor: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
