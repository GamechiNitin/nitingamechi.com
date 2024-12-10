// project_item.dart
import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/image_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';

class ProjectWidget extends StatelessWidget {
  final String title;
  final String shortDescription;
  final String category;
  final String industry;
  final String image;
  final bool isLocal;
  const ProjectWidget({
    super.key,
    required this.title,
    required this.shortDescription,
    required this.category,
    required this.industry,
    required this.image,
    required this.isLocal,
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
                child: ImageWidget(
                  image,
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  fit: BoxFit.fitWidth,
                  isLocal: isLocal,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.kBlackColor,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                shortDescription,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.kDarkGrey1Color,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  industry,
                  style: AppTextStyles.getBody(
                    context: context,
                    scaleFactor: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kDefault2Color,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 14,
                    child: VerticalDivider(
                      thickness: 2.5,
                      color: AppColors.kWhite90Color,
                    ),
                  ),
                ),
                Text(
                  category.toUpperCase(),
                  style: AppTextStyles.getBody(
                    context: context,
                    scaleFactor: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 10, 192, 34),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
