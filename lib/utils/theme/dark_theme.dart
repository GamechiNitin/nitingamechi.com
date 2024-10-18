import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitingamechi/utils/theme/app_style.dart';

import 'app_colors.dart';

ThemeData darkTheme = ThemeData(
  switchTheme: const SwitchThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    thumbColor: WidgetStatePropertyAll(AppColors.kPrimaryColor),
    trackColor: WidgetStatePropertyAll(AppColors.kLPrimaryColor),
    trackOutlineColor: WidgetStatePropertyAll(AppColors.kTransparentColor),
  ),
  primaryIconTheme: const IconThemeData(
    color: AppColors.kWhiteColor,
  ),

  iconTheme: const IconThemeData(
    color: AppColors.kWhite40Color,
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
    backgroundColor: AppColors.kBlackColor,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.kWhiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(
      color: AppColors.kWhiteColor,
    ),
  ),
  useMaterial3: true,
  primaryColor: AppColors.kPrimaryColor,

  scaffoldBackgroundColor: AppColors.kS1Color,
  splashColor: ColorScheme.fromSeed(
    seedColor: AppColors.kPrimaryColor,
  ).primary,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.kPrimaryColor,
    onPrimary: AppColors.kWhiteColor,
    secondary: AppColors.kSecondaryColor,
    onSecondary: AppColors.kWhiteColor,
    error: AppColors.kErrorColor,
    onError: AppColors.kErrorColor,
    surface: AppColors.kSurfaceColor,
    onSurface: AppColors.kWhiteColor,
    shadow: AppColors.kShadowColor,
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
      color: AppColors.kWhiteColor,
      letterSpacing: 1.1,
    ),
    headlineMedium: GoogleFonts.crimsonText(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: AppColors.kWhiteColor,
      letterSpacing: 1.1,
    ),
    headlineSmall: GoogleFonts.crimsonText(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.kWhiteColor,
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
      color: AppColors.kWhiteColor,
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
      color: AppColors.kWhiteColor,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.kWhiteColor,
    ),

    // ------------
    titleLarge: DarkStyle.kTitleLarge,
    titleMedium: DarkStyle.kTitleMedium,
    titleSmall: DarkStyle.kTitleSmall,

    labelSmall: DarkStyle.kLabelSmall,
  ),
);
