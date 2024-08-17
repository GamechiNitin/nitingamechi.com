import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/flutter_responsive_ui.dart';
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
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            AppString.kAboutSubtitle2,
            // textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: (!DeviceInfo(context).isMobile &&
                          !DeviceInfo(context).isSmallMobile)
                      ? 16
                      : null,
                ),
          ),
        ],
      ),
    );
  }
}
