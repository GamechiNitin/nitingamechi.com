import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/about_componet.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_componet.dart';
import 'package:nitingamechi/ui/features/home/widget/dm_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

import 'home_component.dart';

List<String> menu = ['Home', 'About', 'Experience', 'Resume'];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteColor,
        elevation: 0,
        leading: const Icon(Icons.menu),
        titleSpacing: 0,
        // leadingWidth: 40,
        // leading: Padding(
        //   padding: const EdgeInsets.only(top: 10, left: 16),
        //   child: RichText(
        //     text: TextSpan(
        //       text: '< ',
        //       style: Theme.of(context).textTheme.labelMedium,
        //       children: [
        //         TextSpan(
        //           text: 'N',
        //           style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        //                 color: AppColors.kBlueAccentColor,
        //               ),
        //         ),
        //         TextSpan(
        //           text: 'itin',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         TextSpan(
        //           text: 'Gamechi',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         TextSpan(
        //           text: ' />',
        //           style: Theme.of(context).textTheme.labelMedium,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        title: const DMWidget(),
        // title: const Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     MenuTextWidget(label: AppString.kHome),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kAboutMe),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kSkills),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kWork),
        //     SizedBox(width: size30),
        //     MenuTextWidget(label: AppString.kExperience),
        //     SizedBox(width: size30),
        //   ],
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.downloading_sharp,
              color: AppColors.kBlackColor,
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
            color: AppColors.kH,
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
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(
                        text: menu[index].substring(0, 1),
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
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
                ).reversed.toList(),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.kH1,
                      AppColors.kH1,
                      AppColors.kWhiteBGColor,
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
