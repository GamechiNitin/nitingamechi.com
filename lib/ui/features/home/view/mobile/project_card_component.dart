import 'package:flutter/material.dart';
import 'package:nitingamechi/core/data/project/project_model.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
    required this.index,
  });
  final Project project;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kSecondaryColor,
      opacity: 0.1,
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title ?? '',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.kSecondaryColor,
                  ),
            ),
            const SizedBox(height: 12),
            if (project.description != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  project.description!.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Expanded(
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
                          Flexible(
                            child: Text(
                              project.description![index],
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 16),
            Wrap(
              runSpacing: 16,
              spacing: 16,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: List.generate(
                project.stack!.length,
                (index) => Text(
                  project.stack?[index] ?? '',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 12,
                        color: AppColors.kSecondaryColor,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
