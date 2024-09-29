import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(

    /// Customizable Light Text Theme static TextTheme lightTextTheme = TextTheme(

    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.textPrimary),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.tertiaryText),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: AppColors.textPrimary),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: AppColors.tertiaryText),
  ); // TextTheme

  static TextTheme darkTextTheme = TextTheme(

    /// Customizable Dark Text Theme static TextTheme lightTextTheme = TextTheme(

      headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
      headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),

      titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
      titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

      bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
      bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
      bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.tertiaryText),

      labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
      labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.white),
      labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: AppColors.tertiaryText),// TextTheme

  ); // TextTheme

}