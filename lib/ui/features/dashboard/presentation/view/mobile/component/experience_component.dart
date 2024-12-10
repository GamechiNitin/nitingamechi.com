import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.kExperience,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        // BlocBuilder<DashboardBloc, DashboardState>(
        //   builder: (context, state) {
        //     switch (state) {
        //       case DashboardStateError():
        //         return Center(child: Text(state.message));
        //       case DashboardStateNoData():
        //         return const Center(child: Text("No Data"));
        //       case DashboardStateData():
        //         return ListView.separated(
        //           itemCount: state.data..length,
        //           separatorBuilder: (context, index) =>
        //               const SizedBox(height: 25),
        //           shrinkWrap: true,
        //           physics: const NeverScrollableScrollPhysics(),
        //           itemBuilder: (context, index) => ExperienceCardWidget(
        //             company: state.data.project[index],
        //             index: index,
        //           ),
        //         );

        //       default:
        //         return const SizedBox();
        //     }
        //   },
        // ),
      ],
    );
  }
}
