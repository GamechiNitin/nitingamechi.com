import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/contact/ui/contact_component.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/widget/about_widget.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/view/web/component/header_component.dart';
import 'package:nitingamechi/ui/features/project/view/project_component.dart';
import 'package:nitingamechi/ui/widget/footer_widget.dart';
import 'package:nitingamechi/ui/widget/skill_widget.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/app_string.dart';

class DashboardWebScreen extends StatelessWidget {
  const DashboardWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: kBodyWebPadding(context)),
      // physics: const BouncingScrollPhysics(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderComponent(
            title: "Namaste, I'm",
            subTitle: "Nitin Gamechi",
            profession: "Software Engineer",
            description: AppString.kIntro,
          ),
          SizedBox(height: kToolbarHeight),
          AboutWidget(
            title: AppString.kAboutMe,
            description: AppString.kAboutSubtitle2,
            image: AppAssets.nitin,
            isLocal: true,
          ),
          SizedBox(height: kToolbarHeight),
          SkillWidget(imageList: AppAssets.imageList),
          SizedBox(height: kToolbarHeight),
          ProjectComponent(),
          SizedBox(height: kToolbarHeight),
          ContactComponent(),
          SizedBox(height: kToolbarHeight),
          FooterWidget(),
          SizedBox(height: kToolbarHeight),
        ],
      ),
    );
  }
}
