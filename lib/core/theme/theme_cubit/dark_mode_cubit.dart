import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'dark_mode_state.dart';

class DarkModeCubit extends Cubit<DarkModeInitialState> {
  DarkModeCubit() : super(DarkModeInitialState());
  void changeTheme(bool value) {
    ThemePreference.setTheme(value);
    emit(DarkModeInitialState(value));
  }
}

class ThemePreference {
  static Future<bool> setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool result = await sharedPreferences.setBool("theme", value);
    log("SET ::: ThemeStatus : $result -- DarkMode : $value");
    return result;
  }

  static Future<bool> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? result = sharedPreferences.getBool("theme");
    log("GET ::: ThemeStatus : $result -- DarkMode : $result");

    return result ?? false;
  }
}
