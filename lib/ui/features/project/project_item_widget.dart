// project_item.dart
import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/helper.dart';

import 'data/project_response.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel project;

  const ProjectItem({
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
                  height: 170,
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
            Text(
              project.description!,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.kDarkGrey1Color,
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
            const SizedBox(height: 20),
            Flexible(
              child: Wrap(
                runSpacing: 8,
                spacing: 8,
                children: List.generate(
                  project.technology!.length,
                  (index) {
                    Color bgColor = Helper.generateRandomColor();
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(300)),
                      ),
                      child: Text(
                        project.technology![index],
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.bold,
                          color: Helper.getTextColor(
                              bgColor), // Use your color constant if necessary
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
