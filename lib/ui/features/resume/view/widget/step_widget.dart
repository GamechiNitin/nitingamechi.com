import 'package:flutter/material.dart';
import 'package:nitingamechi/ui/widget/glass_widget.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({super.key, required this.showLine, this.height});
  final bool showLine;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: Column(
        children: [
          GlassMorphism(
            blur: 20,
            color: AppColors.kPrimaryColor,
            border: true,
            bcolor: AppColors.kPrimaryColor.withOpacity(0.5),
            opacity: 0.2,
            borderRadius: BorderRadius.circular(300),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.kPrimaryColor,
              ),
            ),
          ),
          if (showLine)
            SizedBox(
              height: height ?? 85,
              child: VerticalDivider(
                color: AppColors.kPrimaryColor.withOpacity(0.5),
                width: 0.4,
              ),
            ),
        ],
      ),
    );
  }
}
