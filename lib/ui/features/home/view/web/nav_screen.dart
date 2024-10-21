import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/contact/contact_screen.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/mobile_screen.dart';
import 'package:nitingamechi/ui/features/home/view/web/cubit/nav_cubit.dart';
import 'package:nitingamechi/ui/features/home/view/web/home/home_web_screen.dart';
import 'package:nitingamechi/ui/features/home/widget/blur_scaffold_widget.dart';
import 'package:nitingamechi/ui/features/home/widget/dm_widget.dart';
import 'package:nitingamechi/ui/features/project/view/project_screen.dart';
import 'package:nitingamechi/ui/features/resume/view/resume_screen.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<String> menu = ['Home', 'Resume', 'Project', 'Contact'];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    if (DeviceInfo(context).isMobile) {
      return const MobileScreen();
    } else {
      return BlocListener<NavCubit, NavState>(
        listener: (context, state) {
          _controller.animateTo(state.currentIndex);
        },
        child: BlurScaffoldWidget(
          child: Scaffold(
            backgroundColor: AppColors.kTransparentColor,
            appBar: PreferredSize(
              preferredSize:
                  Size(kToolbarHeight, MediaQuery.sizeOf(context).width),
              child: Container(
                padding: EdgeInsets.only(
                  left: kAppWebPadding(context),
                  right: 20,
                ),
                color: AppColors.kWhiteColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(child: DMWidget()),
                    SizedBox(
                      height: kToolbarHeight,
                      width: MediaQuery.sizeOf(context).width / 2,
                      child: TabBar(
                        controller: _controller,
                        dividerColor: AppColors.kPrimaryColor,
                        // indicator: SizedBox(),
                        indicatorSize: TabBarIndicatorSize.label,
                        tabAlignment: TabAlignment.fill,
                        indicatorWeight: 4,
                        indicatorColor: AppColors.kPrimaryColor,
                        dividerHeight: 0,

                        indicatorPadding: const EdgeInsets.all(0),
                        padding: const EdgeInsets.only(top: 12),
                        labelColor: AppColors.kPrimaryColor,
                        unselectedLabelColor: AppColors.kDarkGrey1Color,
                        onTap: (value) {
                          _controller.animateTo(value);
                        },
                        tabs: List.generate(
                          menu.length,
                          (index) => Text(
                            menu[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              // color: AppColors.kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kBodyWebPadding(context)),
              child: Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      controller: _controller,
                      children: const [
                        HomeWebScreen(),
                        ResumeScreen(),
                        ProjectScreen(),
                        ContactScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
