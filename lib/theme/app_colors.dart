import 'package:flutter/material.dart';

/// Simple hardcoded colors based on your existing implementation
class AppColors {
  AppColors._();
  
  // === LIGHT THEME COLORS ===
  static const Color primaryLight = Color(0xFF00573F);
  static const Color onPrimaryLight = Color(0xFFFFFFFF);
  static const Color primaryContainerLight = Color(0xFF7EF6C2);
  static const Color onPrimaryContainerLight = Color(0xFF00201D);
  
  static const Color secondaryLight = Color(0xFF4B635A);
  static const Color onSecondaryLight = Color(0xFFFFFFFF);
  static const Color secondaryContainerLight = Color(0xFFCDE9DC);
  static const Color onSecondaryContainerLight = Color(0xFF071F18);
  
  static const Color tertiaryLight = Color(0xFF406275);
  static const Color onTertiaryLight = Color(0xFFFFFFFF);
  static const Color tertiaryContainerLight = Color(0xFFC4E7FD);
  static const Color onTertiaryContainerLight = Color(0xFF001E2E);
  
  static const Color errorLight = Color(0xFFBA1A1A);
  static const Color onErrorLight = Color(0xFFFFFFFF);
  static const Color errorContainerLight = Color(0xFFFFDAD6);
  static const Color onErrorContainerLight = Color(0xFF410002);
  
  static const Color surfaceLight = Color(0xFFF7FBF7);
  static const Color onSurfaceLight = Color(0xFF191D1A);
  static const Color surfaceVariantLight = Color(0xFFDBE5DE);
  static const Color onSurfaceVariantLight = Color(0xFF3F4944);
  
  static const Color outlineLight = Color(0xFF6F7974);
  static const Color outlineVariantLight = Color(0xFFBFC9C2);
  
  // Sample Brand Colors
  static const Color huntingtonGreen = Color(0xFF00573F);
  static const Color huntingtonGreenDark = Color(0xFF003E2C);
  static const Color huntingtonBlue = Color(0xFF005577);
  static const Color huntingtonBlueDark = Color(0xFF003D5A);
  
  // === DARK THEME COLORS ===
  static const Color primaryDark = Color(0xFF62DA9E);
  static const Color onPrimaryDark = Color(0xFF003828);
  static const Color primaryContainerDark = Color(0xFF004733);
  static const Color onPrimaryContainerDark = Color(0xFF7EF6C2);
  
  static const Color secondaryDark = Color(0xFFB1CDC0);
  static const Color onSecondaryDark = Color(0xFF1C352C);
  static const Color secondaryContainerDark = Color(0xFF334B42);
  static const Color onSecondaryContainerDark = Color(0xFFCDE9DC);
  
  static const Color tertiaryDark = Color(0xFFA8CBE1);
  static const Color onTertiaryDark = Color(0xFF0E344B);
  static const Color tertiaryContainerDark = Color(0xFF284A5C);
  static const Color onTertiaryContainerDark = Color(0xFFC4E7FD);
  
  static const Color errorDark = Color(0xFFFFB4AB);
  static const Color onErrorDark = Color(0xFF690005);
  static const Color errorContainerDark = Color(0xFF93000A);
  static const Color onErrorContainerDark = Color(0xFFFFDAD6);
  
  static const Color surfaceDark = Color(0xFF0F1512);
  static const Color onSurfaceDark = Color(0xFFDFE4E0);
  static const Color surfaceVariantDark = Color(0xFF3F4944);
  static const Color onSurfaceVariantDark = Color(0xFFBFC9C2);
  
  static const Color outlineDark = Color(0xFF89938E);
  static const Color outlineVariantDark = Color(0xFF3F4944);
  
  // Dark theme brand colors
  static const Color huntingtonGreenDarkTheme = Color(0xFF62DA9E);
  static const Color huntingtonBlueDarkTheme = Color(0xFF66CCF5);
  
  // === FUNCTIONAL COLORS ===
  static const Color success = Color(0xFF006C4C);
  static const Color successContainer = Color(0xFF7EF6C2);
  static const Color warning = Color(0xFF8A5A00);
  static const Color warningContainer = Color(0xFFFFDDB5);
  static const Color info = Color(0xFF006494);
  static const Color infoContainer = Color(0xFFC4E7FD);
}

/// Helper class to get theme-specific colors
class SampleColors {
  SampleColors._();
  
  /// Get light theme ColorScheme
  static ColorScheme get lightColorScheme => const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryLight,
    onPrimary: AppColors.onPrimaryLight,
    primaryContainer: AppColors.primaryContainerLight,
    onPrimaryContainer: AppColors.onPrimaryContainerLight,
    secondary: AppColors.secondaryLight,
    onSecondary: AppColors.onSecondaryLight,
    secondaryContainer: AppColors.secondaryContainerLight,
    onSecondaryContainer: AppColors.onSecondaryContainerLight,
    tertiary: AppColors.tertiaryLight,
    onTertiary: AppColors.onTertiaryLight,
    tertiaryContainer: AppColors.tertiaryContainerLight,
    onTertiaryContainer: AppColors.onTertiaryContainerLight,
    error: AppColors.errorLight,
    onError: AppColors.onErrorLight,
    errorContainer: AppColors.errorContainerLight,
    onErrorContainer: AppColors.onErrorContainerLight,
    surface: AppColors.surfaceLight,
    onSurface: AppColors.onSurfaceLight,
    surfaceVariant: AppColors.surfaceVariantLight,
    onSurfaceVariant: AppColors.onSurfaceVariantLight,
    outline: AppColors.outlineLight,
    outlineVariant: AppColors.outlineVariantLight,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.onSurfaceLight,
    onInverseSurface: AppColors.surfaceLight,
    inversePrimary: AppColors.primaryContainerLight,
    surfaceTint: AppColors.primaryLight,
  );
  
  /// Get dark theme ColorScheme
  static ColorScheme get darkColorScheme => const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryDark,
    onPrimary: AppColors.onPrimaryDark,
    primaryContainer: AppColors.primaryContainerDark,
    onPrimaryContainer: AppColors.onPrimaryContainerDark,
    secondary: AppColors.secondaryDark,
    onSecondary: AppColors.onSecondaryDark,
    secondaryContainer: AppColors.secondaryContainerDark,
    onSecondaryContainer: AppColors.onSecondaryContainerDark,
    tertiary: AppColors.tertiaryDark,
    onTertiary: AppColors.onTertiaryDark,
    tertiaryContainer: AppColors.tertiaryContainerDark,
    onTertiaryContainer: AppColors.onTertiaryContainerDark,
    error: AppColors.errorDark,
    onError: AppColors.onErrorDark,
    errorContainer: AppColors.errorContainerDark,
    onErrorContainer: AppColors.onErrorContainerDark,
    surface: AppColors.surfaceDark,
    onSurface: AppColors.onSurfaceDark,
    surfaceVariant: AppColors.surfaceVariantDark,
    onSurfaceVariant: AppColors.onSurfaceVariantDark,
    outline: AppColors.outlineDark,
    outlineVariant: AppColors.outlineVariantDark,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: AppColors.onSurfaceDark,
    onInverseSurface: AppColors.surfaceDark,
    inversePrimary: AppColors.primaryContainerDark,
    surfaceTint: AppColors.primaryDark,
  );
}