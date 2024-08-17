import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class DarkStyle {
  static TextStyle kTitleStyle = GoogleFonts.poppins(
    color: AppColors.kWhite90Color,
    fontSize: 13,
    fontWeight: FontWeight.w300,
    letterSpacing: 1,
  );
  static TextStyle kTitleMedium = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.kWhite90Color,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
  static TextStyle kTitleSmall = GoogleFonts.cambay(
    fontSize: 10,
    color: AppColors.kMediumBlackColor,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
}

class LightStyle {
  static TextStyle kTitleStyle = GoogleFonts.poppins(
    color: AppColors.kBlackColor,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
  static TextStyle kTitleMedium = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
  static TextStyle kTitleSmall = GoogleFonts.cambay(
    fontSize: 10,
    color: AppColors.kMediumBlackColor,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
}
