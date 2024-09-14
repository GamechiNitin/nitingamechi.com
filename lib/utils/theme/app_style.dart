import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class DarkStyle {
  static TextStyle kTitleLarge = GoogleFonts.poppins(
    color: AppColors.kWhite90Color,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 1,
  );
  static TextStyle kTitleMedium = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.kWhite90Color,
    fontWeight: FontWeight.normal,
  );
  static TextStyle kTitleSmall = GoogleFonts.cambay(
    fontSize: 12,
    color: AppColors.kWhite90Color,
    fontWeight: FontWeight.normal,
  );

  static TextStyle kLabelSmall = GoogleFonts.cambay(
    fontSize: 14,
    color: AppColors.kWhite70Color,
    fontWeight: FontWeight.w300,
  );
}

class LightStyle {
  static TextStyle kTitleLarge = GoogleFonts.poppins(
    color: AppColors.kBlackColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 1,
  );
  static TextStyle kTitleMedium = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.normal,
  );
  static TextStyle kTitleSmall = GoogleFonts.cambay(
    fontSize: 12,
    color: AppColors.kMediumBlackColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle kLabelSmall = GoogleFonts.cambay(
    fontSize: 14,
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.w300,
  );
}
