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
      fontFamily: FontFamily.poppins.name,
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
      headlineLarge: AppTextStyles.getHeadline(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 16.0,
      ),
      headlineMedium: AppTextStyles.getHeadline(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 14,
      ),
      headlineSmall: AppTextStyles.getHeadline(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 8.0,
      ),
      labelMedium: AppTextStyles.getLabel(
        context: context,
        color: AppColors.kBlueAccentColor,
        scaleFactor: 16.0,
      ),
      bodyLarge: AppTextStyles.getBody(
        context: context,
        color: Colors.blue,
        scaleFactor: 20.0,
      ),
      bodySmall: AppTextStyles.getBody(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 12,
      ),
      displayLarge: AppTextStyles.getDisplay(
        context: context,
        color: AppColors.kPrimaryColor,
        scaleFactor: 16,
        fontWeight: FontWeight.w500,
        // Default scaleFactor will be used (14.0)
      ),
      displayMedium: AppTextStyles.getDisplay(
        context: context,
        color: AppColors.kDefaultColor,
        scaleFactor: 14,
      ),
      displaySmall: AppTextStyles.getDisplay(
        context: context,
        color: AppColors.kWhiteColor,
        scaleFactor: 12,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: AppTextStyles.getTitle(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 16,
      ),
      titleMedium: AppTextStyles.getTitle(
        context: context,
        color: AppColors.kBlackColor,
        scaleFactor: 12,
        // fontWeight:
      ),
      titleSmall: AppTextStyles.getTitle(
        context: context,
        color: AppColors.kPrimaryColor,
        scaleFactor: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: AppTextStyles.getHeadline(
        context: context,
        color: AppColors.kDarkGrey1Color,
        scaleFactor: 14,
        fontWeight: FontWeight.w500,
      ),
    );
