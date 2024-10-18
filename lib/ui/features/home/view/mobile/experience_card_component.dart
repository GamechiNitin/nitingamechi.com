import 'package:flutter/material.dart';
import 'package:nitingamechi/core/data/company/company_model.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

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
        Row(
          children: [
            Text(
              company.position ?? '',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.kSecondaryColor,
                  ),
            ),
            Text(
              " - ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              company.company ?? '',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 13,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 4),
            Text(
              company.location ?? '',
              maxLines: 1,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).iconTheme.color,
                  ),
            ),
            const SizedBox(width: 20),
            Icon(
              Icons.watch_later_outlined,
              size: 13,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 4),
            Text(
              company.timeline ?? '',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).iconTheme.color,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (company.description != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              company.description!.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: AppColors.kSecondaryColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      company.description![index],
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
        Wrap(
          runSpacing: 16,
          spacing: 16,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          verticalDirection: VerticalDirection.down,

          // verticalDirection: VerticalDirection.down,

          crossAxisAlignment: WrapCrossAlignment.start,
          children: List.generate(
            company.stack!.length,
            (index) => GlassMorphism(
              blur: 10,
              color: AppColors.kSecondaryColor,
              opacity: 0.1,
              borderRadius: BorderRadius.circular(5),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Text(
                  company.stack?[index] ?? '',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 12,
                        color: AppColors.kSecondaryColor,
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
