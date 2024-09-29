import 'dart:ui';

class AppColors {
  AppColors._();

  /// App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static Color primary50 = const Color(0xFF0C7B93).withOpacity(0.50);
  static Color primary10 = const Color(0xFF0C7B93).withOpacity(0.10);
  static Color primary5 = const Color(0xFF0C7B93).withOpacity(0.05);
  static const Color secondary = Color(0xFFF3EC63);
  static const Color accent = Color(0xFFb0c7ff);

  /// Text Colors
  static const Color textPrimary = Color(0xFF192434);
  static const Color textSecondary = Color(0xFF5e6671);
  static const Color textWhite = Color(0xFFFFFFFF);
  ///-----------------------------------------///
  // static Color textLight = const Color(0xFFC5C8CC);
  // static Color headingText = const Color(0xFF192434);
  static Color bodyText = const Color(0xFF252f3e);
  static Color tertiaryText = const Color(0xFF8b9199);
  static Color disableText = const Color(0xFFc5c8cc);

  /// Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color bgAccent = Color(0xFFFD6C57);
  static const Color shadowColor = Color(0x33142850);
  ///Search background
  static const Color searchBg= Color(0xfff3f8f9);

  /// Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = AppColors.dark.withOpacity(0.1);

  /// Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// Border Colors
  static const Color borderPrimary = Color(0xFFD9D909);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  /// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF22FC2D);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
