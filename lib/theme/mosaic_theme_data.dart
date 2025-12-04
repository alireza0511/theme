import 'package:flutter/material.dart';
import 'mosaic_colors.dart';
import 'mosaic_typography.dart';
import 'mosaic_spacing.dart';

/// Mosaic Design System Theme Data
///
/// Assembles the Material ThemeData with Mosaic extensions.
/// Uses Composition Pattern: Initializes Material theme with schemes from Mosaic classes,
/// and registers Mosaic extensions that wrap those same schemes.
class MosaicThemeData {
  MosaicThemeData._();

  /// Light Theme
  static ThemeData get lightTheme {
    // 1. Get the Source of Truth (Wrapped Objects)
    final mosaicColors = MosaicColors.light;
    final mosaicTypography = MosaicTypography.regular;

    // 2. Extract Material Schemes
    final colorScheme = mosaicColors.materialScheme;
    final textTheme = mosaicTypography.materialTextTheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,
      // 3. Register Extensions (which wrap the schemes)
      extensions: [mosaicColors, mosaicTypography, MosaicSpacing.regular],
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 2,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: mosaicTypography.brandTitle.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 1,
          shadowColor: Colors.black.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: mosaicTypography.brandBody.copyWith(
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: mosaicTypography.brandBody.copyWith(
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        labelStyle: mosaicTypography.inputLabel.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: mosaicTypography.inputText.copyWith(
          color: colorScheme.onSurfaceVariant.withOpacity(0.6),
        ),
        helperStyle: mosaicTypography.inputHelper.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        errorStyle: mosaicTypography.inputError.copyWith(
          color: colorScheme.error,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }

  /// Dark Theme
  static ThemeData get darkTheme {
    // 1. Get the Source of Truth (Wrapped Objects)
    final mosaicColors = MosaicColors.dark;
    final mosaicTypography = MosaicTypography.regular;

    // 2. Extract Material Schemes
    final colorScheme = mosaicColors.materialScheme;
    final textTheme = mosaicTypography.materialTextTheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,
      // 3. Register Extensions (which wrap the schemes)
      extensions: [mosaicColors, mosaicTypography, MosaicSpacing.regular],
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 2,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: mosaicTypography.brandTitle.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 1,
          shadowColor: Colors.black.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: mosaicTypography.brandBody.copyWith(
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: mosaicTypography.brandBody.copyWith(
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        labelStyle: mosaicTypography.inputLabel.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: mosaicTypography.inputText.copyWith(
          color: colorScheme.onSurfaceVariant.withOpacity(0.6),
        ),
        helperStyle: mosaicTypography.inputHelper.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        errorStyle: mosaicTypography.inputError.copyWith(
          color: colorScheme.error,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
