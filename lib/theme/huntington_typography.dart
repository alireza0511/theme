import 'core/app_theme_interface.dart';

/// Sample Bank typography definitions extracted from your existing implementation
class SampleTypography {
  SampleTypography._();
  
  // === DISPLAY SCALE ===
  static final AppTextStyle displayLarge = AppTextStyle.create(
    fontSize: 57,
    fontWeight: 400,
    letterSpacing: -0.25,
    lineHeight: 1.12,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle displayMedium = AppTextStyle.create(
    fontSize: 45,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.16,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle displaySmall = AppTextStyle.create(
    fontSize: 36,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.22,
    fontFamily: 'Roboto',
  );
  
  // === HEADLINE SCALE ===
  static final AppTextStyle headlineLarge = AppTextStyle.create(
    fontSize: 32,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.25,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle headlineMedium = AppTextStyle.create(
    fontSize: 28,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.29,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle headlineSmall = AppTextStyle.create(
    fontSize: 24,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // === TITLE SCALE ===
  static final AppTextStyle titleLarge = AppTextStyle.create(
    fontSize: 22,
    fontWeight: 400,
    letterSpacing: 0,
    lineHeight: 1.27,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle titleMedium = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 500,
    letterSpacing: 0.15,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle titleSmall = AppTextStyle.create(
    fontSize: 14,
    fontWeight: 500,
    letterSpacing: 0.1,
    lineHeight: 1.43,
    fontFamily: 'Roboto',
  );
  
  // === BODY SCALE ===
  static final AppTextStyle bodyLarge = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 400,
    letterSpacing: 0.5,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle bodyMedium = AppTextStyle.create(
    fontSize: 14,
    fontWeight: 400,
    letterSpacing: 0.25,
    lineHeight: 1.43,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle bodySmall = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 400,
    letterSpacing: 0.4,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // === LABEL SCALE ===
  static final AppTextStyle labelLarge = AppTextStyle.create(
    fontSize: 14,
    fontWeight: 500,
    letterSpacing: 0.1,
    lineHeight: 1.43,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle labelMedium = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 500,
    letterSpacing: 0.5,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle labelSmall = AppTextStyle.create(
    fontSize: 11,
    fontWeight: 500,
    letterSpacing: 0.5,
    lineHeight: 1.45,
    fontFamily: 'Roboto',
  );
  
  // === BRAND TYPOGRAPHY ===
  static final AppTextStyle brandDisplay = AppTextStyle.create(
    fontSize: 48,
    fontWeight: 700,
    letterSpacing: -0.5,
    lineHeight: 1.17,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle brandHeadline = AppTextStyle.create(
    fontSize: 32,
    fontWeight: 600,
    letterSpacing: 0,
    lineHeight: 1.25,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle brandTitle = AppTextStyle.create(
    fontSize: 20,
    fontWeight: 600,
    letterSpacing: 0,
    lineHeight: 1.40,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle brandBody = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 400,
    letterSpacing: 0.5,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle brandCaption = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 400,
    letterSpacing: 0.4,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // === FUNCTIONAL TYPOGRAPHY ===
  
  // Button styles
  static final AppTextStyle buttonLarge = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 500,
    letterSpacing: 0.15,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle buttonMedium = AppTextStyle.create(
    fontSize: 14,
    fontWeight: 500,
    letterSpacing: 0.1,
    lineHeight: 1.43,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle buttonSmall = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 500,
    letterSpacing: 0.5,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // Input styles
  static final AppTextStyle inputLabel = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 500,
    letterSpacing: 0.5,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle inputText = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 400,
    letterSpacing: 0.5,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle inputHelper = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 400,
    letterSpacing: 0.4,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle inputError = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 500,
    letterSpacing: 0.4,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // Navigation
  static final AppTextStyle navigationLabel = AppTextStyle.create(
    fontSize: 12,
    fontWeight: 500,
    letterSpacing: 0.5,
    lineHeight: 1.33,
    fontFamily: 'Roboto',
  );
  
  // === SPECIALIZED TYPOGRAPHY ===
  
  // Currency display
  static final AppTextStyle currencyLarge = AppTextStyle.create(
    fontSize: 32,
    fontWeight: 600,
    letterSpacing: 0,
    lineHeight: 1.25,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle currencyMedium = AppTextStyle.create(
    fontSize: 20,
    fontWeight: 600,
    letterSpacing: 0,
    lineHeight: 1.40,
    fontFamily: 'Roboto',
  );
  
  static final AppTextStyle currencySmall = AppTextStyle.create(
    fontSize: 16,
    fontWeight: 600,
    letterSpacing: 0.15,
    lineHeight: 1.50,
    fontFamily: 'Roboto',
  );
  
  // Percentage
  static final AppTextStyle percentage = AppTextStyle.create(
    fontSize: 18,
    fontWeight: 600,
    letterSpacing: 0,
    lineHeight: 1.44,
    fontFamily: 'Roboto',
  );
}

/// Sample typography system implementation
class SampleTypographySystem implements AppTypographySystem {
  const SampleTypographySystem();
  
  // === DISPLAY SCALE ===
  @override
  AppTextStyle get displayLarge => SampleTypography.displayLarge;
  @override
  AppTextStyle get displayMedium => SampleTypography.displayMedium;
  @override
  AppTextStyle get displaySmall => SampleTypography.displaySmall;
  
  // === HEADLINE SCALE ===
  @override
  AppTextStyle get headlineLarge => SampleTypography.headlineLarge;
  @override
  AppTextStyle get headlineMedium => SampleTypography.headlineMedium;
  @override
  AppTextStyle get headlineSmall => SampleTypography.headlineSmall;
  
  // === TITLE SCALE ===
  @override
  AppTextStyle get titleLarge => SampleTypography.titleLarge;
  @override
  AppTextStyle get titleMedium => SampleTypography.titleMedium;
  @override
  AppTextStyle get titleSmall => SampleTypography.titleSmall;
  
  // === BODY SCALE ===
  @override
  AppTextStyle get bodyLarge => SampleTypography.bodyLarge;
  @override
  AppTextStyle get bodyMedium => SampleTypography.bodyMedium;
  @override
  AppTextStyle get bodySmall => SampleTypography.bodySmall;
  
  // === LABEL SCALE ===
  @override
  AppTextStyle get labelLarge => SampleTypography.labelLarge;
  @override
  AppTextStyle get labelMedium => SampleTypography.labelMedium;
  @override
  AppTextStyle get labelSmall => SampleTypography.labelSmall;
  
  // === BRAND TYPOGRAPHY ===
  @override
  AppTextStyle get brandDisplay => SampleTypography.brandDisplay;
  @override
  AppTextStyle get brandHeadline => SampleTypography.brandHeadline;
  @override
  AppTextStyle get brandTitle => SampleTypography.brandTitle;
  @override
  AppTextStyle get brandBody => SampleTypography.brandBody;
  @override
  AppTextStyle get brandCaption => SampleTypography.brandCaption;
  
  // === FUNCTIONAL TYPOGRAPHY ===
  @override
  AppTextStyle get buttonLarge => SampleTypography.buttonLarge;
  @override
  AppTextStyle get buttonMedium => SampleTypography.buttonMedium;
  @override
  AppTextStyle get buttonSmall => SampleTypography.buttonSmall;
  
  @override
  AppTextStyle get inputLabel => SampleTypography.inputLabel;
  @override
  AppTextStyle get inputText => SampleTypography.inputText;
  @override
  AppTextStyle get inputHelper => SampleTypography.inputHelper;
  @override
  AppTextStyle get inputError => SampleTypography.inputError;
  
  @override
  AppTextStyle get navigationLabel => SampleTypography.navigationLabel;
  
  // === SPECIALIZED TYPOGRAPHY ===
  @override
  AppTextStyle get currencyLarge => SampleTypography.currencyLarge;
  @override
  AppTextStyle get currencyMedium => SampleTypography.currencyMedium;
  @override
  AppTextStyle get currencySmall => SampleTypography.currencySmall;
  @override
  AppTextStyle get percentage => SampleTypography.percentage;
}