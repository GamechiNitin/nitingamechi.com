import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';

class MenuTextWidget extends StatelessWidget {
  const MenuTextWidget({super.key, required this.label, this.onTap});
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: AppColors.kTransparentColor,
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
