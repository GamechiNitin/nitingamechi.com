import 'dart:developer';

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
}
