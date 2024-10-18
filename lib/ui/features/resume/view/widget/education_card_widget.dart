import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/resume/data/resume_response.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class EducationCardWidget extends StatelessWidget {
  const EducationCardWidget({
    super.key,
    required this.company,
    required this.index,
  });
  final Education company;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company.title ?? '',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.kSecondaryColor,
                ),
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
          Text(
            company.description ?? "",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
