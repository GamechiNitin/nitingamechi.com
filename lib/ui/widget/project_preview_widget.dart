import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/helper.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:nitingamechi/utils/theme/light_theme.dart';
import 'carousel_widget.dart';
import 'glass_widget.dart';
import 'image_widget.dart';

class ProjectPreview extends StatelessWidget {
  final String title;
  final bool isLocal;
  final String shortDescription;
  final String description;
  final String industry;
  final List<String> technology;
  final String image;
  final List<String> imagelist;
  final String appstore;
  final String playstore;
  final String sourceCode;
  final String category;
  final List<String> projectGoals;
  final String userBase;

  // Constructor accepting project data
  const ProjectPreview({
    super.key,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.industry,
    required this.technology,
    required this.image,
    required this.imagelist,
    required this.appstore,
    required this.playstore,
    required this.sourceCode,
    required this.category,
    required this.projectGoals,
    required this.userBase,
    required this.isLocal,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
      margin: const EdgeInsets.all(20),
      child: GlassMorphism(
        blur: 10,
        color: AppColors.kFrostedGlassColor,
        bcolor: AppColors.kWhite40Color,
        border: true,
        opacity: 0.3,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.getHeadline(
                        context: context,
                        color: AppColors.kBlackColor,
                        scaleFactor: 24.0,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Short Description
                    Text(
                      shortDescription,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Text(
                      description,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text: "Industry: ",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.kDarkGrey1Color,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: industry,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(width: 20),
                        RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text: "Category: ",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.kDarkGrey1Color,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: category,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Project Goals
                    const Text(
                      "Project Goals:",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    for (var goal in projectGoals)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("• $goal",
                            style: const TextStyle(fontSize: 14)),
                      ),
                    const SizedBox(height: 20),

                    // User Base
                    Text(
                      "User Base: $userBase",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.kDarkGrey1Color,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Technology stack
                    const Text(
                      "Technologies used:",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      runSpacing: 8,
                      spacing: 8,
                      children: List.generate(
                        technology.length,
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
                              technology[index],
                              style: TextStyle(
                                fontSize: 13,
                                letterSpacing: 1.4,
                                fontWeight: FontWeight.bold,
                                color: Helper.getTextColor(bgColor),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        if (playstore != 'NA')
                          IconButton(
                            onPressed: () =>
                                Helper.launchLink(Uri.parse(playstore)),
                            icon: const ImageWidget(
                              AppAssets.kplaystore,
                              height: 40,
                              width: 40,
                              padding: EdgeInsets.all(6),
                              borderRadius: kCircularBorderRadius,
                            ),
                          ),
                        if (appstore != 'NA')
                          IconButton(
                            onPressed: () =>
                                Helper.launchLink(Uri.parse(appstore)),
                            icon: const ImageWidget(
                              AppAssets.kAppStore,
                              height: 40,
                              width: 40,
                              padding: EdgeInsets.all(6),
                              borderRadius: kCircularBorderRadius,
                            ),
                          ),
                        if (sourceCode != 'NA')
                          IconButton(
                            onPressed: () =>
                                Helper.launchLink(Uri.parse(sourceCode)),
                            icon: const ImageWidget(
                              AppAssets.kGithub,
                              height: 40,
                              width: 40,
                              padding: EdgeInsets.all(6),
                              borderRadius: kCircularBorderRadius,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: CarouselWidget(
                  imagelist: imagelist,
                  isLocal: isLocal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
