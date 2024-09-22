import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nitingamechi/ui/features/resume/data/resume_response.dart';

class MessageExcception {
  final int code;
  final String message;

  const MessageExcception({required this.code, required this.message});
}

class ResumeRepository {
  static Future<(ResumeResponse?, MessageExcception?)> fetchDataAPI() async {
    // try {
    String path = 'assets/json/resume.json';
    final source = await rootBundle.loadString(path);
    ResumeResponse? experienceResponse = ResumeResponse.fromJson(
      jsonDecode(source),
    );
    return (experienceResponse, null);
    // } catch (e) {
    //   log(e.toString());
    //   return (
    //     null,
    //     MessageExcception(
    //       code: 0,
    //       message: e.toString(),
    //     ),
    //   );
    // }
  }
}
