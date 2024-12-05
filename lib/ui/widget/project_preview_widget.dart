import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/helper.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'carousel_widget.dart';
import 'glass_widget.dart';

class ProjectPreview extends StatelessWidget {
  final String title;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),

                        // Short Description
                        Text(
                          shortDescription,
                          style: const TextStyle(
                              fontSize: 16, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(height: 20),

                        Text(
                          description,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "Industry: $industry",
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "Category: $category",
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Project Goals
                        const Text("Project Goals:"),
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
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 20),

                        // Technology stack
                        const Text(
                          "Technologies used:",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(300)),
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
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CarouselWidget(imagelist: imagelist),
                  )
                ],
              ),

              // App Store / Play Store Links
              Row(
                children: [
                  if (appstore != "NA")
                    IconButton(
                      icon: const Icon(Icons.apple),
                      onPressed: () {
                        // Open app store link
                      },
                    ),
                  if (playstore != "NA")
                    IconButton(
                      icon: const Icon(Icons.android),
                      onPressed: () {
                        // Open playstore link
                      },
                    ),
                  if (sourceCode != "NA")
                    IconButton(
                      icon: const Icon(Icons.code),
                      onPressed: () {
                        // Open source code link
                      },
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
