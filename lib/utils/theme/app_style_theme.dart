part of 'light_theme.dart';

enum FontFamily {
  poppins,
  roboto,
  arial,
}

class AppTextStyles {
  // Helper function to calculate responsive font size
  static double getResponsiveFontSize(BuildContext context,
      {double scaleFactor = 16.0}) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textScaleFactor = MediaQuery.of(context)
        .textScaleFactor; // Get text scale factor (device zoom)
    // Base width for design (e.g., iPhone 6 is 375px)
    double baseWidth = 375.0;

    // Calculate the responsive font size based on screen width and scale factor
    double responsiveFontSize = (screenWidth / baseWidth) * scaleFactor;

    // Account for text scaling (device zoom) by multiplying the scaleFactor
    return responsiveFontSize * textScaleFactor;
  }

  // Helper function to get the text style with font family flexibility
  static TextStyle _getTextStyle({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor, // Optional scaleFactor, defaults to 16.0
    required FontFamily fontFamily, // Pass FontFamily enum for font selection
  }) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;

    Color finalColor = isLight ? color : (darkColor ?? color);

    final String fontFamily0 = _getFontFamilyString(fontFamily);

    // Choose between Google Fonts and local fonts
    TextStyle textStyle;
    if (fontFamily0 == 'Poppins' || fontFamily0 == 'Roboto') {
      textStyle = GoogleFonts.getFont(fontFamily0,
          textStyle: TextStyle(
            fontFamily: fontFamily0,
            color: finalColor,
            fontSize: getResponsiveFontSize(context,
                scaleFactor: scaleFactor ?? 16.0),
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
          ));
    } else {
      textStyle = TextStyle(
        fontFamily: fontFamily0, // Use local font
        color: finalColor,
        fontSize:
            getResponsiveFontSize(context, scaleFactor: scaleFactor ?? 16.0),
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      );
    }

    return textStyle;
  }

  static String _getFontFamilyString(FontFamily fontFamily) {
    switch (fontFamily) {
      case FontFamily.poppins:
        return 'Poppins'; // Google font
      case FontFamily.roboto:
        return 'Roboto'; // Google font
      case FontFamily.arial:
        return 'Arial'; // Local font
      default:
        return 'Poppins'; // Default font if none selected
    }
  }

  // Title text style (responsive) with font family flexibility
  static TextStyle getTitle({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor, // Optional scaleFactor, defaults to 16.0
    FontFamily? fontFamily, // Pass FontFamily enum for font selection
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  // Subtitle text style (responsive)
  static TextStyle getSubtitle({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor, // Optional scaleFactor, defaults to 14.0
    FontFamily? fontFamily, // Pass FontFamily enum for font selection
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 14.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  // Body text style (responsive)
  static TextStyle getBody({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor, // Optional scaleFactor, defaults to 14.0
    FontFamily? fontFamily, // Pass FontFamily enum for font selection
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 14.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  static TextStyle getButtonText({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.w600,
    double letterSpacing = 0.0,
    double? scaleFactor,
    FontFamily? fontFamily,
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 14.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  static TextStyle getCaption({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor,
    FontFamily? fontFamily,
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 12.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  // Label text style (responsive)
  static TextStyle getLabel({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor,
    FontFamily? fontFamily,
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 14.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }

  static TextStyle getErrorText({
    required BuildContext context,
    required Color color,
    Color? darkColor, // Optional dark mode color
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double? scaleFactor,
    FontFamily? fontFamily,
  }) {
    return _getTextStyle(
      context: context,
      color: AppColors.kErrorColor,
      darkColor: darkColor ?? AppColors.kErrorColor, // Use the dark error color
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor ?? 14.0,
      fontFamily: fontFamily ?? FontFamily.poppins, // Default to poppins
    );
  }
}
