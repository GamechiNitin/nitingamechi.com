import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/ui/features/project/project_item_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ProjectComponent extends StatelessWidget {
  const ProjectComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.kProject,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headlineSmall,
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
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProjectItem(
                    project: state.data.project[index],
                  ),
                );

              default:
                return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
