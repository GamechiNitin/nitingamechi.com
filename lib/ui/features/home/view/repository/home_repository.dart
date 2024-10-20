import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:nitingamechi/core/data/experience_response.dart';

class MessageExcception {
  final int code;
  final String message;

  const MessageExcception({required this.code, required this.message});
}

class HomeRepository {
  static Future<(ExperienceResponse?, MessageExcception?)>
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
        MessageExcception(
          code: 0,
          message: e.toString(),
        ),
      );
    }
  }
}
