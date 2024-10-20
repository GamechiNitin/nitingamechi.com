import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/home/view/mobile/experience_card_component.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/ui/features/project/project_item_widget.dart';
import 'package:nitingamechi/ui/features/resume/bloc/resume_bloc.dart';
import 'package:nitingamechi/ui/features/resume/view/widget/education_card_widget.dart';
import 'package:nitingamechi/utils/app_string.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kTransparentColor,

      // appBar: AppBar(
      //   title: const Text("Resume"),
      // ),
      body: BlocProvider(
        create: (context) => ResumeBloc()..add(const ResumeEvent.fetchData()),
        child: BlocBuilder<ResumeBloc, ResumeState>(
          builder: (context, state) {
            switch (state) {
              case ResumeStateError():
                return Center(child: Text(state.message));
              case ResumeStateNoData():
                return const Center(child: Text(AppString.kNoData));
              case ResumeStateData():
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 35,
                                child: Column(
                                  children: [
                                    GlassMorphism(
                                      blur: 10,
                                      color: AppColors.kPrimaryColor,
                                      opacity: 0.1,
                                      borderRadius: BorderRadius.circular(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.school,
                                          color: AppColors.kPrimaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                      child: VerticalDivider(
                                        color: AppColors.kPrimaryColor
                                            .withOpacity(0.5),
                                        width: 0.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 8),
                                child: Text(
                                  AppString.kEducation,
                                  textAlign: TextAlign.start,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                          GlassMorphism(
                            blur: 20,
                            color: AppColors.kPrimaryColor,
                            opacity: 0.2,
                            border: true,
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.download,
                                    size: 16,
                                    color: AppColors.kPrimaryColor,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    AppString.kDownloadResume,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.kWhiteColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: List.generate(
                          state.data.education.length,
                          (index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StepWidget(
                                showLine:
                                    state.data.education.length != index + 1,
                              ),
                              const SizedBox(width: 10),
                              EducationCardWidget(
                                company: state.data.education[index],
                                index: index,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ----------
                      const SizedBox(
                        height: kToolbarHeight,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 35,
                            child: Column(
                              children: [
                                GlassMorphism(
                                  blur: 10,
                                  color: AppColors.kPrimaryColor,
                                  opacity: 0.1,
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.school,
                                      color: AppColors.kPrimaryColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    color: AppColors.kPrimaryColor
                                        .withOpacity(0.5),
                                    width: 0.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 8),
                            child: Text(
                              AppString.kWork,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(
                          state.data.company.length,
                          (index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StepWidget(
                                showLine:
                                    state.data.company.length != index + 1,
                                height: index == 1 ? 160 : 230,
                              ),
                              const SizedBox(width: 10),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: ExperienceCardWidget(
                                  company: state.data.company[index],
                                  index: index,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GlassMorphism(
                            blur: 10,
                            color: AppColors.kPrimaryColor,
                            opacity: 0.1,
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.school,
                                color: AppColors.kPrimaryColor,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 8),
                            child: Text(
                              AppString.kProject,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: state.data.project.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: DeviceInfo(context).isMobile
                              ? 1
                              : DeviceInfo(context).isTablet
                                  ? 2
                                  : 3,
                          mainAxisExtent: 480,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ProjectItem(
                            project: state.data.project[index],
                          );
                        },
                      ),
                    ],
                  ),
                );
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}

class StepWidget extends StatelessWidget {
  const StepWidget({super.key, required this.showLine, this.height});
  final bool showLine;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: Column(
        children: [
          GlassMorphism(
            blur: 20,
            color: AppColors.kPrimaryColor,
            border: true,
            bcolor: AppColors.kPrimaryColor.withOpacity(0.5),
            opacity: 0.2,
            borderRadius: BorderRadius.circular(300),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.kPrimaryColor,
              ),
            ),
          ),
          if (showLine)
            SizedBox(
              height: height ?? 85,
              child: VerticalDivider(
                color: AppColors.kPrimaryColor.withOpacity(0.5),
                width: 0.4,
              ),
            ),
        ],
      ),
    );
  }
}
