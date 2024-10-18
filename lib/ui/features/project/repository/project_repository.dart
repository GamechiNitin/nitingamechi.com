import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:nitingamechi/ui/features/project/data/project_response.dart';

class MessageExcception {
  final int code;
  final String message;

  const MessageExcception({required this.code, required this.message});
}

class ProjectRepository {
  static Future<(ProjectResponse?, MessageExcception?)> fetchDataAPI() async {
    try {
      String path = 'assets/json/project.json';
      final source = await rootBundle.loadString(path);
      ProjectResponse? experienceResponse = ProjectResponse.fromJson(
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
