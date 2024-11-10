import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

part 'dark_theme.dart';
part 'app_style_theme.dart';

ThemeData lightThemeData(BuildContext context) => ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            AppTextStyles.getButtonText(
              context: context,
              color: AppColors.kBlackColor,
              scaleFactor: 16.0,
            ),
          ),
        ),
      ),
      switchTheme: const SwitchThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        thumbColor: WidgetStatePropertyAll(AppColors.kPrimaryColor),
        trackColor: WidgetStatePropertyAll(AppColors.kLPrimaryColor),
        trackOutlineColor: WidgetStatePropertyAll(AppColors.kTransparentColor),
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
      splashColor:
          ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).primary,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.kWhiteColor,
        onPrimary: AppColors.kWhiteColor,
        secondary: AppColors.kWhiteColor,
        onSecondary: AppColors.kWhiteColor,
        error: AppColors.kBlackColor,
        onError: ColorScheme.fromSeed(seedColor: AppColors.kErrorColor).onError,
        surface: AppColors.kPrimaryColor,
        onSurface:
            ColorScheme.fromSeed(seedColor: AppColors.kPrimaryColor).primary,
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
      textTheme: commontextTheme(context),
    );

TextTheme? commontextTheme(BuildContext context) => TextTheme(
      headlineLarge: AppTextStyles.getTitle(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 26.0,
      ),
      headlineMedium: AppTextStyles.getTitle(
        context: context,
        color: AppColors.kBlackColor,
        // Default scaleFactor will be used (16.0)
      ),
      bodyLarge: AppTextStyles.getBody(
        context: context,
        color: Colors.blue,
        scaleFactor: 20.0,
      ),
      labelMedium: AppTextStyles.getLabel(
        context: context,
        color: AppColors.kBlueAccentColor,
        scaleFactor: 16.0,
      ),
      displayLarge: AppTextStyles.getButtonText(
        context: context,
        color: AppColors.kPrimaryColor,
        // Default scaleFactor will be used (14.0)
      ),
    );
