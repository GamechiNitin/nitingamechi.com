import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

import 'experience_card_component.dart';

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
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state) {
              case HomeStateError():
                return Center(child: Text(state.message));
              case HomeStateNoData():
                return const Center(child: Text("No Data"));
              case HomeStateData():
                return ListView.separated(
                  itemCount: state.data.company.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 25),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ExperienceCardWidget(
                    company: state.data.company[index],
                    index: index,
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
