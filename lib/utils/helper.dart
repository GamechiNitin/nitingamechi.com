import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/export/utils_export.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Helper {
  static Future<String?> launchLink(Uri uri) async {
    try {
      await launchUrl(
        uri,
        mode: LaunchMode.platformDefault,
      );
    } catch (e) {
      log("Err");
      throw 'Could not launch $uri';
    }
    return null;
  }

  static void toast(BuildContext context, String message, {bool? sucess}) {
    if (message != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor:
              sucess == true ? AppColors.lightGreen : AppColors.kErrorColor,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 35),
          duration: const Duration(milliseconds: 1200),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          content: Text(
            message,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.kWhiteColor,
                ),
          ),
        ),
      );
    }
  }

  static Widget loading() => const Center(
        child: Dialog(
          child: CircularProgressIndicator(),
        ),
      );

  static Color generateRandomColor() {
    final random = math.Random();
    return Color.fromARGB(
      255, // Alpha
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }

  static Color getTextColor(Color bgColor) {
    // Calculate brightness
    final brightness =
        (bgColor.red * 0.299 + bgColor.green * 0.587 + bgColor.blue * 0.114);
    // Return white for dark backgrounds and black for light backgrounds
    return brightness > 186 ? Colors.black : Colors.white;
  }
}
