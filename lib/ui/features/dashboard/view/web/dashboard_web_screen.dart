import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/contact/contact_screen.dart';
import 'package:nitingamechi/ui/features/dashboard/view/mobile/component/about_component.dart';
import 'package:nitingamechi/ui/features/dashboard/view/web/component/header_component.dart';
import 'package:nitingamechi/ui/features/dashboard/view/mobile/component/project_component.dart';
import 'package:nitingamechi/ui/widget/footer_widget.dart';
import 'package:nitingamechi/ui/widget/skill_widget.dart';
import 'package:nitingamechi/utils/app_dimens.dart';

class DashboardWebScreen extends StatelessWidget {
  const DashboardWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // padding: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: kBodyWebPadding(context)),
      physics: const BouncingScrollPhysics(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderComponent(),
          SizedBox(height: kToolbarHeight),
          AboutComponent(),
          SizedBox(height: kToolbarHeight),
          SkillWidget(),
          SizedBox(height: kToolbarHeight),
          ProjectComponent(),
          SizedBox(height: kToolbarHeight),
          ContactScreen(),
          SizedBox(height: kToolbarHeight),
          FooterWidget(),
          SizedBox(height: kToolbarHeight),
        ],
      ),
    );
  }
}
