
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'customTheme/appbar_theme.dart';
import 'customTheme/elevated_button_theme.dart';
import 'customTheme/input_decoration_theme.dart';
import 'customTheme/outlined_button_theme.dart';
import 'customTheme/text_theme.dart';

class AppTheme {
  AppTheme._();

  ///Light theme
  static ThemeData lightTheme = ThemeData(
      disabledColor: AppColors.disableText,
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
      appBarTheme: AppAppBarTheme.lightAppBar,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
      colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          brightness: Brightness.light,
          onPrimary: AppColors.primary,
          secondary: AppColors.secondary,
          onSurfaceVariant: AppColors.disableText),
      switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(AppColors.primary.withAlpha(50)),
          trackOutlineColor: MaterialStateProperty.all(AppColors.primary),
          thumbColor: MaterialStateProperty.all(AppColors.primary)),
      dividerTheme: const DividerThemeData(color: AppColors.grey));
}
