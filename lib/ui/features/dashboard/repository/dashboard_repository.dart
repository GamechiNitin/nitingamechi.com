import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:nitingamechi/core/data/custom_exception/custom_exception.dart';
import 'package:nitingamechi/core/data/experience_response/experience_response.dart';

class DashboardRepository {
  static Future<(ExperienceResponse?, CustomMessageException?)>
      fetchDataAPI() async {
    try {
      String path = 'assets/json/data.json';
      final source = await rootBundle.loadString(path);
      ExperienceResponse? experienceResponse = ExperienceResponse.fromJson(
        jsonDecode(source),
      );
      return (experienceResponse, null);
    } catch (e) {
      log(e.toString());
      return (
        null,
        CustomMessageException(
          code: 0,
          message: e.toString(),
        ),
      );
    }
  }
}
