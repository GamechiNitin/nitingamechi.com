import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';
import 'package:nitingamechi/ui/widget/blur_scaffold_widget.dart';
import 'package:nitingamechi/ui/widget/project_preview_widget.dart';

class ProjectPreviewScreen extends StatelessWidget {
  const ProjectPreviewScreen({super.key, required this.data});
  final ProjectModel data;

  @override
  Widget build(BuildContext context) {
    return BlurScaffoldWidget(
      child: ProjectPreview(
        title: data.title ?? "",
        isLocal: data.isLocal ?? true,
        shortDescription: data.shortDescription ?? "",
        description: data.description ?? "",
        industry: data.industry ?? "",
        technology: data.technology ?? [],
        image: data.image ?? "",
        imagelist: data.imagelist ?? [],
        appstore: data.appstore ?? "",
        playstore: data.playstore ?? "",
        sourceCode: data.sourceCode ?? "",
        category: data.category?.name ?? CategoryEnum.personal.name,
        projectGoals: data.projectGoals ?? [],
        userBase: data.userBase ?? "",
      ),
    );
  }
}
