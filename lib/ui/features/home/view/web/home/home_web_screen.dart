import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/contact/contact_screen.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/about_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/home_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/project_component.dart';
import 'package:nitingamechi/ui/features/home/widget/footer_widget.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(20),
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeComponent(),
          SizedBox(height: kToolbarHeight),
          AboutComponent(),
          SizedBox(height: kToolbarHeight),
          ExperienceComponent(),
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
