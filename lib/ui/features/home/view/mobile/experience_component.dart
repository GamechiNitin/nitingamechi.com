import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/core/data/experience_response.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/ui/features/home/widget/glass_widget.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

import 'data_component.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
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
                    itemCount: state.data.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => index.isEven
                        ? ExperienceCardWidget(
                            company: state.data[index],
                            index: index,
                          )
                        : MyWidget(
                            company: state.data[index],
                            index: index,
                          ),
                  );

                default:
                  return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.company, required this.index});
  final Company company;
  final int index;
  static List<Color> color = [
    Colors.black,
    Colors.lightBlue,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: color[index],
      opacity: 0.3,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        // margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: ExpansionTile(
            initiallyExpanded: true,
            tilePadding: EdgeInsets.zero,
            // collapsedIconColor: AppColors.kBlackColor,
            iconColor: AppColors.kPrimaryColor,
            expandedAlignment: Alignment.centerLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            dense: true,
            title: Text(
              company.company ?? '',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                  ),
            ),
            children: [
              Divider(
                thickness: 0.9,
                height: 1,
                color: Theme.of(context).hintColor,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    size: 16,
                    // color: AppColors.kBlackColor,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      company.location ?? '',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.link,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    company.timeline ?? '',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (company.description != null)
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      company.description!.length,
                      (index) => Text(
                        company.description![index],
                        // textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 12,
                            ),
                      ),
                    )),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
