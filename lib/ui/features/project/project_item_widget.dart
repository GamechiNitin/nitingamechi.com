// project_item.dart
import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/image_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:nitingamechi/utils/helper.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(kBorderRadius)),
              child: ImageWidget(
                project.image ?? "",
                width: MediaQuery.of(context).size.width,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
          ),
          GlassMorphism(
            blur: 10,
            color: AppColors.kH11,
            border: true,
            opacity: 0.3,
            child: SizedBox(
              height: 55,
              width: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: project.imagelist!.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        project.imagelist![index],
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.getBody(
                    context: context,
                    scaleFactor: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlackColor,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project.shortDescription ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.getBody(
                    context: context,
                    scaleFactor: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kDarkGrey1Color,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      project.industry ?? "",
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
                      project.category?.name.toUpperCase() ?? "",
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
          const SizedBox(height: 8),
          SizedBox(
            height: 45,
            width: 350,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: project.technology!.length,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              itemBuilder: (context, index) {
                Color bgColor = Helper.generateRandomColor();
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(300)),
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
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
