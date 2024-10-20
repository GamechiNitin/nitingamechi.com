import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/core/theme/theme_cubit/dark_mode_cubit.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/about_component.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_component.dart';
import 'package:nitingamechi/ui/features/home/widget/dm_widget.dart';
import 'package:nitingamechi/ui/features/project/view/project_screen.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

import 'home_component.dart';
import 'project_component.dart';

List<String> menu = ['Home', 'Project', 'About', 'Experience', 'Resume'];

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).appBarTheme.titleTextStyle?.color,
        ),
        titleSpacing: 0,
        title: const DMWidget(),
        actions: [
          BlocBuilder<DarkModeCubit, DarkModeInitialState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  bool ok = state.isDarkMode;
                  ok = !ok;
                  BlocProvider.of<DarkModeCubit>(context).changeTheme(ok);
                },
                icon: const Icon(
                  Icons.light_mode,
                  color: AppColors.kPrimaryColor,
                  size: 28,
                ),
              );
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.downloading_sharp,
              // color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              size: 28,
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            width: 40,
            padding: const EdgeInsets.all(4.0),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height,
            child: RotatedBox(
              quarterTurns: -45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  menu.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProjectScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: RichText(
                        text: TextSpan(
                          text: menu[index].substring(0, 1),
                          style: Theme.of(context).appBarTheme.titleTextStyle,
                          children: [
                            TextSpan(
                              text: menu[index].substring(1),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.kPrimaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ).reversed.toList(),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding: (!DeviceInfo(context).isMobile &&
                        !DeviceInfo(context).isSmallMobile &&
                        !DeviceInfo(context).isTablet)
                    ? const EdgeInsets.symmetric(horizontal: 80)
                    : const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                  ),
                  gradient: Theme.of(context).brightness == Brightness.dark
                      ? null
                      : const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.kH1,
                            AppColors.kH1,
                            // AppColors.kWhiteBGColor,
                            AppColors.kH11,
                            AppColors.kH11,
                          ],
                        ),
                ),
                width: MediaQuery.of(context).size.width - 50,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeComponent(),
                    AboutComponent(),
                    ExperienceComponent(),
                    ProjectComponent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
