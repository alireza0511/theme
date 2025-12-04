import 'package:flutter/material.dart';

/// Mosaic Design System Typography
///
/// Implements ThemeExtension for consistent access via context.
/// Uses Composition Pattern: Wraps a [TextTheme] to provide standard Material tokens
/// while adding brand-specific text styles.
class MosaicTypography extends ThemeExtension<MosaicTypography> {
  // === COMPOSITION: WRAPPED MATERIAL TEXT THEME ===
  final TextTheme materialTextTheme;

  // === BRAND STYLES ===
  final TextStyle brandDisplay;
  final TextStyle brandHeadline;
  final TextStyle brandTitle;
  final TextStyle brandBody;
  final TextStyle brandCaption;

  // === CURRENCY STYLES ===
  final TextStyle currencyLarge;
  final TextStyle currencyMedium;
  final TextStyle currencySmall;

  // === FORM STYLES ===
  final TextStyle inputLabel;
  final TextStyle inputText;
  final TextStyle inputHelper;
  final TextStyle inputError;

  const MosaicTypography({
    required this.materialTextTheme,
    required this.brandDisplay,
    required this.brandHeadline,
    required this.brandTitle,
    required this.brandBody,
    required this.brandCaption,
    required this.currencyLarge,
    required this.currencyMedium,
    required this.currencySmall,
    required this.inputLabel,
    required this.inputText,
    required this.inputHelper,
    required this.inputError,
  });

  // === DELEGATED GETTERS (Facade) ===
  TextStyle? get displayLarge => materialTextTheme.displayLarge;
  TextStyle? get displayMedium => materialTextTheme.displayMedium;
  TextStyle? get displaySmall => materialTextTheme.displaySmall;
  TextStyle? get headlineLarge => materialTextTheme.headlineLarge;
  TextStyle? get headlineMedium => materialTextTheme.headlineMedium;
  TextStyle? get headlineSmall => materialTextTheme.headlineSmall;
  TextStyle? get titleLarge => materialTextTheme.titleLarge;
  TextStyle? get titleMedium => materialTextTheme.titleMedium;
  TextStyle? get titleSmall => materialTextTheme.titleSmall;
  TextStyle? get bodyLarge => materialTextTheme.bodyLarge;
  TextStyle? get bodyMedium => materialTextTheme.bodyMedium;
  TextStyle? get bodySmall => materialTextTheme.bodySmall;
  TextStyle? get labelLarge => materialTextTheme.labelLarge;
  TextStyle? get labelMedium => materialTextTheme.labelMedium;
  TextStyle? get labelSmall => materialTextTheme.labelSmall;

  @override
  MosaicTypography copyWith({
    TextTheme? materialTextTheme,
    TextStyle? brandDisplay,
    TextStyle? brandHeadline,
    TextStyle? brandTitle,
    TextStyle? brandBody,
    TextStyle? brandCaption,
    TextStyle? currencyLarge,
    TextStyle? currencyMedium,
    TextStyle? currencySmall,
    TextStyle? inputLabel,
    TextStyle? inputText,
    TextStyle? inputHelper,
    TextStyle? inputError,
  }) {
    return MosaicTypography(
      materialTextTheme: materialTextTheme ?? this.materialTextTheme,
      brandDisplay: brandDisplay ?? this.brandDisplay,
      brandHeadline: brandHeadline ?? this.brandHeadline,
      brandTitle: brandTitle ?? this.brandTitle,
      brandBody: brandBody ?? this.brandBody,
      brandCaption: brandCaption ?? this.brandCaption,
      currencyLarge: currencyLarge ?? this.currencyLarge,
      currencyMedium: currencyMedium ?? this.currencyMedium,
      currencySmall: currencySmall ?? this.currencySmall,
      inputLabel: inputLabel ?? this.inputLabel,
      inputText: inputText ?? this.inputText,
      inputHelper: inputHelper ?? this.inputHelper,
      inputError: inputError ?? this.inputError,
    );
  }

  @override
  MosaicTypography lerp(ThemeExtension<MosaicTypography>? other, double t) {
    if (other is! MosaicTypography) {
      return this;
    }
    return MosaicTypography(
      materialTextTheme: TextTheme.lerp(
        materialTextTheme,
        other.materialTextTheme,
        t,
      ),
      brandDisplay: TextStyle.lerp(brandDisplay, other.brandDisplay, t)!,
      brandHeadline: TextStyle.lerp(brandHeadline, other.brandHeadline, t)!,
      brandTitle: TextStyle.lerp(brandTitle, other.brandTitle, t)!,
      brandBody: TextStyle.lerp(brandBody, other.brandBody, t)!,
      brandCaption: TextStyle.lerp(brandCaption, other.brandCaption, t)!,
      currencyLarge: TextStyle.lerp(currencyLarge, other.currencyLarge, t)!,
      currencyMedium: TextStyle.lerp(currencyMedium, other.currencyMedium, t)!,
      currencySmall: TextStyle.lerp(currencySmall, other.currencySmall, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      inputText: TextStyle.lerp(inputText, other.inputText, t)!,
      inputHelper: TextStyle.lerp(inputHelper, other.inputHelper, t)!,
      inputError: TextStyle.lerp(inputError, other.inputError, t)!,
    );
  }

  // === STATIC CONSTANTS (Source of Truth) ===

  // Material Text Styles
  static const TextStyle _displayLarge = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    height: 1.125,
    fontFamily: 'Roboto',
  );

  static const TextStyle _displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.156,
    fontFamily: 'Roboto',
  );

  static const TextStyle _displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.222,
    fontFamily: 'Roboto',
  );

  static const TextStyle _headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.25,
    fontFamily: 'Roboto',
  );

  static const TextStyle _headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.286,
    fontFamily: 'Roboto',
  );

  static const TextStyle _headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.273,
    fontFamily: 'Roboto',
  );

  static const TextStyle _titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle _titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.429,
    fontFamily: 'Roboto',
  );

  static const TextStyle _bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle _bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.429,
    fontFamily: 'Roboto',
  );

  static const TextStyle _bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.429,
    fontFamily: 'Roboto',
  );

  static const TextStyle _labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.455,
    fontFamily: 'Roboto',
  );

  // Brand Styles
  static const TextStyle _brandDisplay = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.167,
    fontFamily: 'Roboto',
  );

  static const TextStyle _brandHeadline = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.25,
    fontFamily: 'Roboto',
  );

  static const TextStyle _brandTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.4,
    fontFamily: 'Roboto',
  );

  static const TextStyle _brandBody = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle _brandCaption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _currencyLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.25,
    fontFamily: 'Roboto',
  );

  static const TextStyle _currencyMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.4,
    fontFamily: 'Roboto',
  );

  static const TextStyle _currencySmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    height: 1.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle _inputLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _inputText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle _inputHelper = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  static const TextStyle _inputError = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    height: 1.333,
    fontFamily: 'Roboto',
  );

  // === TEXT THEME FACTORY ===

  static TextTheme get regularTextTheme => const TextTheme(
    displayLarge: _displayLarge,
    displayMedium: _displayMedium,
    displaySmall: _displaySmall,
    headlineLarge: _headlineLarge,
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
    titleLarge: _titleLarge,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,
    bodyLarge: _bodyLarge,
    bodyMedium: _bodyMedium,
    bodySmall: _bodySmall,
    labelLarge: _labelLarge,
    labelMedium: _labelMedium,
    labelSmall: _labelSmall,
  );

  /// Default Typography
  static MosaicTypography get regular => MosaicTypography(
    materialTextTheme: regularTextTheme,
    brandDisplay: _brandDisplay,
    brandHeadline: _brandHeadline,
    brandTitle: _brandTitle,
    brandBody: _brandBody,
    brandCaption: _brandCaption,
    currencyLarge: _currencyLarge,
    currencyMedium: _currencyMedium,
    currencySmall: _currencySmall,
    inputLabel: _inputLabel,
    inputText: _inputText,
    inputHelper: _inputHelper,
    inputError: _inputError,
  );
}
