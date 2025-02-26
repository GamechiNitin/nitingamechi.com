import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/core/common/widget/home_loading.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/view/mobile/component/experience_card_component.dart';
import 'package:nitingamechi/ui/features/project/view/project_component.dart';
import 'package:nitingamechi/ui/widget/footer_widget.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/ui/features/resume/bloc/resume_bloc.dart';
import 'package:nitingamechi/ui/features/resume/view/widget/education_card_widget.dart';
import 'package:nitingamechi/utils/app_string.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';
import 'package:nitingamechi/utils/app_dimens.dart';

import 'widget/step_widget.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kTransparentColor,
      body: BlocProvider(
        create: (context) => ResumeBloc()..add(const ResumeEvent.fetchData()),
        child: BlocBuilder<ResumeBloc, ResumeState>(
          builder: (context, state) {
            switch (state) {
              case ResumeStateLoading():
                return const HomeLoadingScreen();
              case ResumeStateError():
                return Center(child: Text(state.message));
              case ResumeStateNoData():
                return const Center(child: Text(AppString.kNoData));
              case ResumeStateData():
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: kBodyWebPadding(context),
                    vertical: kToolbarHeight,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ),
                            ],
                          ),
                          GlassMorphism(
                            blur: 20,
                            color: AppColors.kPrimaryColor,
                            opacity: 0.2,
                            border: true,
                            borderRadius: BorderRadius.circular(6),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 7.0,
                                horizontal: 12,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.download,
                                    size: 18,
                                    color: AppColors.kWhiteColor,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    AppString.kDownloadResume,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
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
                      const SizedBox(height: kToolbarHeight),
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
                              style: Theme.of(context).textTheme.displayLarge,
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
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: ExperienceCardWidget(
                                    company: state.data.company[index],
                                    index: index,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: kToolbarHeight),
                      const ProjectComponent(),
                      const SizedBox(height: kToolbarHeight),
                      const FooterWidget(),
                      const SizedBox(height: kToolbarHeight),
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

class ResumeViewWidget extends StatelessWidget {
  const ResumeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
