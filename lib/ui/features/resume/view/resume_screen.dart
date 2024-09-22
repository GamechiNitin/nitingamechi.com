import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/ui/features/resume/bloc/resume_bloc.dart';
import 'package:nitingamechi/ui/features/resume/view/widget/education_card_widget.dart';
import 'package:nitingamechi/utils/app_string.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
      ),
      body: SingleChildScrollView(
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
                            color: AppColors.kSecondaryColor,
                            opacity: 0.1,
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.school,
                                color: AppColors.kSecondaryColor,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            child: VerticalDivider(
                              color: AppColors.kSecondaryColor.withOpacity(0.5),
                              width: 0.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Text(
                        AppString.kEducation,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
                GlassMorphism(
                  blur: 20,
                  color: AppColors.kSecondaryColor,
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
                          color: AppColors.kSecondaryColor,
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
            BlocBuilder<ResumeBloc, ResumeState>(
              bloc: ResumeBloc()..add(const ResumeEvent.fetchData()),
              builder: (context, state) {
                switch (state) {
                  case ResumeStateError():
                    return Center(child: Text(state.message));
                  case ResumeStateNoData():
                    return const Center(child: Text(AppString.kNoData));
                  case ResumeStateData():
                    return ListView.builder(
                      itemCount: state.data.education.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 35,
                            child: Column(
                              children: [
                                GlassMorphism(
                                  blur: 20,
                                  color: AppColors.kSecondaryColor,
                                  border: true,
                                  bcolor: AppColors.kSecondaryColor
                                      .withOpacity(0.5),
                                  opacity: 0.2,
                                  borderRadius: BorderRadius.circular(300),
                                  child: const Padding(
                                    padding: EdgeInsets.all(3),
                                    child: CircleAvatar(
                                      radius: 3,
                                      backgroundColor:
                                          AppColors.kSecondaryColor,
                                    ),
                                  ),
                                ),
                                if (state.data.education.length != index + 1)
                                  SizedBox(
                                    height: 85,
                                    child: VerticalDivider(
                                      color: AppColors.kSecondaryColor
                                          .withOpacity(0.5),
                                      width: 0.4,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          EducationCardWidget(
                            company: state.data.education[index],
                            index: index,
                          ),
                        ],
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
    );
  }
}
