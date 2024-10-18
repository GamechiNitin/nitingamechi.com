import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/features/home/view/web/home/home_web_screen.dart';
import 'package:nitingamechi/ui/features/home/widget/dm_widget.dart';
import 'package:nitingamechi/ui/features/project/view/project_screen.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<String> menu = ['Home', 'Project', 'About', 'Experience', 'Resume'];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(kToolbarHeight, MediaQuery.sizeOf(context).width),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kToolbarHeight),
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
      body: TabBarView(
        controller: _controller,
        children: const [
          HomeWebScreen(),
          ProjectScreen(),
        ],
      ),
    );
  }
}
