import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.kAboutMe,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.kBlueColor,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            AppString.kAboutSubtitle2,
            // textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
