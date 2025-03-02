import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/core/common/widget/home_loading.dart';
import 'package:nitingamechi/ui/features/contact/ui/contact_component.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/widget/about_widget.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/view/web/component/header_component.dart';
import 'package:nitingamechi/ui/features/project/view/project_component.dart';
import 'package:nitingamechi/ui/widget/footer_widget.dart';
import 'package:nitingamechi/ui/widget/skill_widget.dart';
import 'package:nitingamechi/utils/app_assets.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:nitingamechi/utils/app_string.dart';

class DashboardWebScreen extends StatelessWidget {
  const DashboardWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        log(state.toString());
        switch (state) {
          case DashboardStateLoading():
            return const HomeLoadingScreen();
          case DashboardStateError():
            return Center(child: Text(state.message));
          case DashboardStateNoData():
            return const Center(child: Text(AppString.kNoData));
          case DashboardStateData():
            return SingleChildScrollView(
              padding:
                  EdgeInsets.symmetric(horizontal: kBodyWebPadding(context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderComponent(
                    title: state.data.bio.title ?? "",
                    subTitle: state.data.bio.subTitle ?? "",
                    profession: state.data.bio.profession ?? "",
                    description: state.data.bio.description ?? "",
                  ),
                  const SizedBox(height: kToolbarHeight),
                  AboutWidget(
                    title: AppString.kAboutMe,
                    description: state.data.bio.about ?? "",
                    image: state.data.bio.image ?? "",
                    isLocal: state.data.bio.isLocal ?? true,
                  ),
                  const SizedBox(height: kToolbarHeight),
                  const SkillWidget(imageList: AppAssets.imageList),
                  const SizedBox(height: kToolbarHeight),
                  const ProjectComponent(),
                  const SizedBox(height: kToolbarHeight),
                  const ContactComponent(),
                  const SizedBox(height: kToolbarHeight),
                  const FooterWidget(),
                  const SizedBox(height: kToolbarHeight),
                ],
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
