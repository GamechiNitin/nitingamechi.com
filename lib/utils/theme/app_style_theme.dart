part of 'light_theme.dart';

enum FontFamily { poppins, roboto, arial }

class AppTextStyles {
  // Helper function to calculate responsive font size with platform-specific base width
  static double getResponsiveFontSize(BuildContext context,
      {double scaleFactor = 16.0}) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textScaleFactor =
        MediaQuery.of(context).textScaleFactor; // Device zoom

    // Determine the platform and set base width accordingly
    double baseWidth = _getBaseWidthForScreenSize(screenWidth);

    // Calculate the responsive font size based on screen width and base width
    double responsiveFontSize = (screenWidth / baseWidth) * scaleFactor;

    // Adjust based on text scale factor
    return responsiveFontSize * textScaleFactor;
  }

  // Base width for different screen sizes
  static double _getBaseWidthForScreenSize(double screenWidth) {
    if (screenWidth <= 360.0) return 360.0; // Small phones
    if (screenWidth <= 600.0) return 375.0; // Medium phones
    if (screenWidth <= 800.0) return 600.0; // Small tablets
    if (screenWidth <= 1024.0) return 768.0; // Large tablets
    if (screenWidth <= 1280.0) return 1024.0; // Small laptops
    if (screenWidth <= 1440.0) return 1200.0; // Medium laptops
    return 1440.0; // Desktop
  }

  // Font family mapping
  static const Map<FontFamily, String> _fontFamilyMap = {
    FontFamily.poppins: 'Poppins',
    FontFamily.roboto: 'Roboto',
    FontFamily.arial: 'Arial',
  };

  // Helper function to get text style with font family flexibility
  static TextStyle _getTextStyle({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 16.0,
    required FontFamily fontFamily,
  }) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;

    Color finalColor = isLight ? color : (darkColor ?? color);
    final String fontFamilyString = _fontFamilyMap[fontFamily] ?? 'Poppins';

    return GoogleFonts.getFont(fontFamilyString,
        textStyle: TextStyle(
          fontFamily: fontFamilyString,
          color: finalColor,
          fontSize: getResponsiveFontSize(context, scaleFactor: scaleFactor),
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
        ));
  }

  // General method to generate text styles
  static TextStyle _generateTextStyle({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 16.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _getTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Title text style
  static TextStyle getHeadline({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 16.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Subtitle text style
  static TextStyle getSubtitle({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Body text style
  static TextStyle getBody({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Button text style
  static TextStyle getButtonText({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.w600,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Caption text style
  static TextStyle getCaption({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 12.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Label text style
  static TextStyle getLabel({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Error text style
  static TextStyle getErrorText({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: Colors.red,
      darkColor: darkColor ?? Colors.red,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  } // Overline text style (small text, usually used for labels)

  static TextStyle getOverline({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 10.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

// Small text style (fine print, smaller than body text)
  static TextStyle getSmall({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 10.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

// Display text style (larger text for headings, banners)
  static TextStyle getDisplay({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 16.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

// Highlight text style (for highlighted text, different color or emphasis)
  static TextStyle getHighlight({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.bold,
    double letterSpacing = 0.0,
    double scaleFactor = 16.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor:
          darkColor ?? color.withOpacity(0.7), // Optional dark mode color
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

// Muted text style (lighter text, often used for placeholders or less important text)
  static TextStyle getMuted({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 12.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color.withOpacity(0.5), // Lighter color for muted effect
      darkColor: darkColor ?? color.withOpacity(0.5),
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

  // Subtitle text style
  static TextStyle getTitle({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    );
  }

// Link text style (for clickable links or text that appears interactive)
  static TextStyle getLink({
    required BuildContext context,
    required Color color,
    Color? darkColor,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0.0,
    double scaleFactor = 14.0,
    FontFamily fontFamily = FontFamily.poppins,
  }) {
    return _generateTextStyle(
      context: context,
      color: color,
      darkColor: darkColor,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      scaleFactor: scaleFactor,
      fontFamily: fontFamily,
    ).copyWith(
      decoration: TextDecoration.underline, // Underlined for link text
    );
  }
}
