import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/ui/widget/home_project_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ProjectComponent extends StatelessWidget {
  const ProjectComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: AppColors.kBlueColor,
      bcolor: AppColors.kWhite40Color,
      border: true,
      opacity: 0.1,
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
                  const Text(
                    AppString.kProject,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    AppString.kProjectHeadline,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      switch (state) {
                        case HomeStateError():
                          return Center(child: Text(state.message));
                        case HomeStateNoData():
                          return const Center(child: Text("No Data"));
                        case HomeStateData():
                          return GridView.builder(
                            itemCount: state.data.project.length - 1,
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
