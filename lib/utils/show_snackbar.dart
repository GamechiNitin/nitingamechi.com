import 'package:flutter/material.dart';

enum SnackBarStatus { success, failure, unknown }

class SnackAppColors {
  static const Color lightGreen = Color(0xFF4CAF50);
  static const Color kErrorColor = Color(0xFFF44336);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kGreyColor = Colors.grey;

  static Color getSnackBarColor(SnackBarStatus status) {
    switch (status) {
      case SnackBarStatus.success:
        return lightGreen;
      case SnackBarStatus.failure:
        return kErrorColor;
      case SnackBarStatus.unknown:
        return kGreyColor;
      default:
        return kGreyColor;
    }
  }
}

void showSnackBar(BuildContext context, String message,
    {SnackBarStatus? status}) {
  // Default to SnackBarStatus.unknown if no status is passed
  status ??= SnackBarStatus.unknown;

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: SnackAppColors.getSnackBarColor(status),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 35),
        duration: const Duration(milliseconds: 1200),
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        content: Text(
          message,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: SnackAppColors.kWhiteColor,
              ),
        ),
      ),
    );
}
