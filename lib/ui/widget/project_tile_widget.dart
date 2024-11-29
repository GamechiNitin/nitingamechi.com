// project_item.dart
import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ProjectItemWidget extends StatelessWidget {
  final ProjectModel project;

  const ProjectItemWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kFrostedGlassColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.3,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(kBorderRadius)),
              child: Container(
                color: AppColors.kFrostedGlassColor,
                child: Image.asset(
                  project.image ?? "",
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              project.title ?? "",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.kBlackColor,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                project.description ?? "",
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.kDarkGrey1Color,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Industry",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.kDarkGrey1Color,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 4),
            Text(
              project.industry ?? "",
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.kDarkGrey1Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
