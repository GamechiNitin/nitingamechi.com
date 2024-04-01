import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class ExperienceComponent extends StatelessWidget {
  const ExperienceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhiteColor.withOpacity(0.05),
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(size50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppString.kExperience,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            AppString.kAboutTile,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: size20),
          Text(
            AppString.kAboutSubtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
