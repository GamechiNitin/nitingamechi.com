import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_style.dart';

ThemeData lightTheme = ThemeData(
  switchTheme: const SwitchThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    thumbColor: WidgetStatePropertyAll(AppColors.kPrimaryColor),
    trackColor: WidgetStatePropertyAll(AppColors.kLPrimaryColor),
    trackOutlineColor: WidgetStatePropertyAll(AppColors.kTransparentColor),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
        GoogleFonts.poppins(
          color: AppColors.kBlackColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.kWhiteColor,
    selectedIconTheme: IconThemeData(color: AppColors.kBlackColor),
    unselectedIconTheme: IconThemeData(color: AppColors.kBlackColor),
    selectedLabelStyle: TextStyle(
      color: AppColors.kBlackColor,
      fontSize: 8,
      letterSpacing: 0.2,
    ),
    unselectedLabelStyle: TextStyle(
      color: AppColors.kBlackColor,
      fontSize: 8,
      letterSpacing: 0.2,
    ),
  ),

  // brightness: Brightness.dark,
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.kPrimaryColor;
        }
        return AppColors.kWhiteColor;
      },
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.kWhiteColor,
    surfaceTintColor: AppColors.kTransparentColor,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.kBlackColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  ),
  useMaterial3: true,
  primaryColor: AppColors.kPrimaryColor,

  scaffoldBackgroundColor:
      ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).surface,
  splashColor: ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).primary,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.kWhiteColor,
    onPrimary: AppColors.kWhiteColor,
    secondary: AppColors.kWhiteColor,
    onSecondary: AppColors.kWhiteColor,
    error: AppColors.kBlackColor,
    onError: ColorScheme.fromSeed(seedColor: AppColors.kErrorColor).onError,
    surface: AppColors.kPrimaryColor,
    onSurface: ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).primary,
    shadow: AppColors.kWhiteColor,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    modalBackgroundColor:
        ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).surface,
  ),

  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      fontSize: 14,
      color: AppColors.kBlackColor,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      color: AppColors.kHintColor,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: GoogleFonts.poppins(
      color: AppColors.kErrorColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.crimsonText(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      letterSpacing: 1.1,
    ),
    headlineMedium: GoogleFonts.crimsonText(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      letterSpacing: 1.1,
    ),
    headlineSmall: GoogleFonts.crimsonText(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      letterSpacing: 1.1,
    ),
    bodyLarge: GoogleFonts.crimsonText(
      fontSize: 35,
      fontWeight: FontWeight.w800,
      color: Colors.blue,
      height: 1.2,
      letterSpacing: 1.1,
    ),
    bodySmall: GoogleFonts.crimsonText(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.blaka(
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: AppColors.kBlueAccentColor,
    ),
    displayLarge: GoogleFonts.pacifico(
      fontSize: 24,
      color: AppColors.kPrimaryColor,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.mogra(
      fontSize: 14,
      color: AppColors.kBlackColor,
      fontWeight: FontWeight.w500,
    ),
    // ---------
    titleLarge: LightStyle.kTitleLarge,
    titleMedium: LightStyle.kTitleMedium,
    titleSmall: LightStyle.kTitleSmall,
    // ---------
    labelSmall: LightStyle.kLabelSmall,
  ),
);
