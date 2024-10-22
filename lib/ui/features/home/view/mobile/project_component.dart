import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/home_project_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:shimmer/shimmer.dart';

class ProjectComponent extends StatelessWidget {
  const ProjectComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kWhiteColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.3,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.kWhiteColor,
                    highlightColor: Colors.blueAccent,
                    child: Text(
                      AppString.kProject,
                      style: GoogleFonts.poppins(
                        color: AppColors.kWhiteColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Shimmer.fromColors(
                    baseColor: AppColors.kBlackColor,
                    highlightColor: Colors.blueAccent,
                    child: Text(
                      AppString.kProjectHeadline,
                      style: GoogleFonts.poppins(
                        color: AppColors.kWhiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        wordSpacing: 1,
                        height: 2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      switch (state) {
                        case HomeStateError():
                          return Center(child: Text(state.message));
                        case HomeStateNoData():
                          return const Center(child: Text("No Data"));
                        case HomeStateData():
                          return GridView.builder(
                            itemCount: state.data.project.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: DeviceInfo(context).isMobile
                                  ? 1
                                  : DeviceInfo(context).isTablet
                                      ? 2
                                      : 2,
                              mainAxisExtent: 350,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => ProjectItemWidget(
                              project: state.data.project[index],
                            ),
                          );

                        default:
                          return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 320,
              height: 550,
              child: Column(
                children: [
                  Expanded(
                    child: GlassMorphism(
                      blur: 10,
                      color: Colors.yellowAccent,
                      bcolor: AppColors.kWhite40Color,
                      border: true,
                      opacity: 0.3,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(kBorderRadius)),
                        child: Container(
                          color: AppColors.kFrostedGlassColor,
                          child: Image.asset(
                            "assets/image/project/Talk.png",
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        AppString.kViewMore,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                      const SizedBox(width: 20),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {},
                        backgroundColor: AppColors.kBackgroundColor,
                        child: const Icon(
                          Icons.chevron_right,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
