import 'dart:developer';

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
}
