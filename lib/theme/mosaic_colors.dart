import 'package:flutter/material.dart';

/// Mosaic Design System Colors
///
/// Implements ThemeExtension for consistent access via context.
/// Uses Composition Pattern: Wraps a [ColorScheme] to provide standard Material tokens
/// while adding brand-specific and semantic colors.
class MosaicColors extends ThemeExtension<MosaicColors> {
  // === COMPOSITION: WRAPPED MATERIAL SCHEME ===
  final ColorScheme materialScheme;

  // === BRAND COLORS ===
  final Color huntingtonGreen;
  final Color huntingtonBlue;

  // === SEMANTIC COLORS ===
  final Color success;
  final Color warning;
  final Color info;

  const MosaicColors({
    required this.materialScheme,
    required this.huntingtonGreen,
    required this.huntingtonBlue,
    required this.success,
    required this.warning,
    required this.info,
  });

  // === DELEGATED GETTERS (Facade) ===
  Color get primary => materialScheme.primary;
  Color get onPrimary => materialScheme.onPrimary;
  Color get primaryContainer => materialScheme.primaryContainer;
  Color get onPrimaryContainer => materialScheme.onPrimaryContainer;
  Color get secondary => materialScheme.secondary;
  Color get onSecondary => materialScheme.onSecondary;
  Color get secondaryContainer => materialScheme.secondaryContainer;
  Color get onSecondaryContainer => materialScheme.onSecondaryContainer;
  Color get tertiary => materialScheme.tertiary;
  Color get onTertiary => materialScheme.onTertiary;
  Color get tertiaryContainer => materialScheme.tertiaryContainer;
  Color get onTertiaryContainer => materialScheme.onTertiaryContainer;
  Color get error => materialScheme.error;
  Color get onError => materialScheme.onError;
  Color get errorContainer => materialScheme.errorContainer;
  Color get onErrorContainer => materialScheme.onErrorContainer;
  Color get surface => materialScheme.surface;
  Color get onSurface => materialScheme.onSurface;
  Color get surfaceContainerHighest => materialScheme.surfaceContainerHighest;
  Color get onSurfaceVariant => materialScheme.onSurfaceVariant;
  Color get outline => materialScheme.outline;
  Color get outlineVariant => materialScheme.outlineVariant;
  Color get shadow => materialScheme.shadow;
  Color get scrim => materialScheme.scrim;
  Color get inverseSurface => materialScheme.inverseSurface;
  Color get onInverseSurface => materialScheme.onInverseSurface;
  Color get inversePrimary => materialScheme.inversePrimary;
  Color get surfaceTint => materialScheme.surfaceTint;

  @override
  MosaicColors copyWith({
    ColorScheme? materialScheme,
    Color? huntingtonGreen,
    Color? huntingtonBlue,
    Color? success,
    Color? warning,
    Color? info,
  }) {
    return MosaicColors(
      materialScheme: materialScheme ?? this.materialScheme,
      huntingtonGreen: huntingtonGreen ?? this.huntingtonGreen,
      huntingtonBlue: huntingtonBlue ?? this.huntingtonBlue,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  MosaicColors lerp(ThemeExtension<MosaicColors>? other, double t) {
    if (other is! MosaicColors) {
      return this;
    }
    return MosaicColors(
      materialScheme: ColorScheme.lerp(materialScheme, other.materialScheme, t),
      huntingtonGreen: Color.lerp(huntingtonGreen, other.huntingtonGreen, t)!,
      huntingtonBlue: Color.lerp(huntingtonBlue, other.huntingtonBlue, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
    );
  }

  // === STATIC CONSTANTS (Source of Truth) ===

  // Light Theme Colors
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

  // Dark Theme Colors
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

  // Brand Colors
  static const Color _huntingtonGreenLight = Color(0xFF00573F);
  static const Color _huntingtonBlueLight = Color(0xFF005577);
  static const Color _huntingtonGreenDark = Color(0xFF62DA9E);
  static const Color _huntingtonBlueDark = Color(0xFF66CCF5);

  // Functional Colors
  static const Color _success = Color(0xFF006C4C);
  static const Color _warning = Color(0xFF8A5A00);
  static const Color _info = Color(0xFF006494);

  // === SCHEME FACTORIES ===

  static ColorScheme get lightScheme => const ColorScheme(
    brightness: Brightness.light,
    primary: primaryLight,
    onPrimary: onPrimaryLight,
    primaryContainer: primaryContainerLight,
    onPrimaryContainer: onPrimaryContainerLight,
    secondary: secondaryLight,
    onSecondary: onSecondaryLight,
    secondaryContainer: secondaryContainerLight,
    onSecondaryContainer: onSecondaryContainerLight,
    tertiary: tertiaryLight,
    onTertiary: onTertiaryLight,
    tertiaryContainer: tertiaryContainerLight,
    onTertiaryContainer: onTertiaryContainerLight,
    error: errorLight,
    onError: onErrorLight,
    errorContainer: errorContainerLight,
    onErrorContainer: onErrorContainerLight,
    surface: surfaceLight,
    onSurface: onSurfaceLight,
    surfaceContainerHighest: surfaceVariantLight,
    onSurfaceVariant: onSurfaceVariantLight,
    outline: outlineLight,
    outlineVariant: outlineVariantLight,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: onSurfaceLight,
    onInverseSurface: surfaceLight,
    inversePrimary: primaryContainerLight,
    surfaceTint: primaryLight,
  );

  static ColorScheme get darkScheme => const ColorScheme(
    brightness: Brightness.dark,
    primary: primaryDark,
    onPrimary: onPrimaryDark,
    primaryContainer: primaryContainerDark,
    onPrimaryContainer: onPrimaryContainerDark,
    secondary: secondaryDark,
    onSecondary: onSecondaryDark,
    secondaryContainer: secondaryContainerDark,
    onSecondaryContainer: onSecondaryContainerDark,
    tertiary: tertiaryDark,
    onTertiary: onTertiaryDark,
    tertiaryContainer: tertiaryContainerDark,
    onTertiaryContainer: onTertiaryContainerDark,
    error: errorDark,
    onError: onErrorDark,
    errorContainer: errorContainerDark,
    onErrorContainer: onErrorContainerDark,
    surface: surfaceDark,
    onSurface: onSurfaceDark,
    surfaceContainerHighest: surfaceVariantDark,
    onSurfaceVariant: onSurfaceVariantDark,
    outline: outlineDark,
    outlineVariant: outlineVariantDark,
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: onSurfaceDark,
    onInverseSurface: surfaceDark,
    inversePrimary: primaryContainerDark,
    surfaceTint: primaryDark,
  );

  /// Default Light Theme Colors
  static MosaicColors get light => MosaicColors(
    materialScheme: lightScheme,
    huntingtonGreen: _huntingtonGreenLight,
    huntingtonBlue: _huntingtonBlueLight,
    success: _success,
    warning: _warning,
    info: _info,
  );

  /// Default Dark Theme Colors
  static MosaicColors get dark => MosaicColors(
    materialScheme: darkScheme,
    huntingtonGreen: _huntingtonGreenDark,
    huntingtonBlue: _huntingtonBlueDark,
    success: _success,
    warning: _warning,
    info: _info,
  );
}
