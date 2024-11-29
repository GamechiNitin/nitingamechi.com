import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/resume/data/resume_response.dart';

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
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 10),
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
          Text(
            company.description ?? "",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
