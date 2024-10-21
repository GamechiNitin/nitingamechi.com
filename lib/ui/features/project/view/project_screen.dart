import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/home/widget/footer_widget.dart';
import 'package:nitingamechi/ui/features/project/bloc/project_bloc.dart';
import 'package:nitingamechi/ui/features/project/project_item_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kTransparentColor,
      // appBar: AppBar(
      //   title: const Text("Project"),
      // ),
      body: BlocProvider(
        create: (context) => ProjectBloc()..add(const ProjectEvent.fetchData()),
        child: BlocBuilder<ProjectBloc, ProjectState>(
          builder: (context, state) {
            switch (state) {
              case ProjectStateError():
                return Center(child: Text(state.message));
              case ProjectStateNoData():
                return const Center(child: Text(AppString.kNoData));
              case ProjectStateData():
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: state.data.data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: DeviceInfo(context).isMobile
                              ? 1
                              : DeviceInfo(context).isTablet
                                  ? 2
                                  : 3,
                          mainAxisExtent: 500,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ProjectItem(
                            project: state.data.data[index],
                          );
                        },
                      ),
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
