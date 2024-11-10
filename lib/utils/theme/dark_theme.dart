part of 'light_theme.dart';

abstract class AppTheme {
  static ThemeData lightTheme(BuildContext context) => lightThemeData(context);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        switchTheme: const SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          thumbColor: WidgetStatePropertyAll(AppColors.kPrimaryColor),
          trackColor: WidgetStatePropertyAll(AppColors.kLPrimaryColor),
          trackOutlineColor:
              WidgetStatePropertyAll(AppColors.kTransparentColor),
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
        textTheme: commontextTheme(context),
      );
}
