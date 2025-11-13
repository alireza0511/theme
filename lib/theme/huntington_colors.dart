import 'core/app_theme_interface.dart';

/// Sample Bank color definitions extracted from your existing implementation
class SampleColors {
  SampleColors._();
  
  // === LIGHT THEME COLORS ===
  
  // Primary Colors
  static final AppColor primaryLight = AppColor.hex('00573F');
  static final AppColor onPrimaryLight = AppColor.hex('FFFFFF');
  static final AppColor primaryContainerLight = AppColor.hex('7EF6C2');
  static final AppColor onPrimaryContainerLight = AppColor.hex('00201D');
  
  // Secondary Colors
  static final AppColor secondaryLight = AppColor.hex('4B635A');
  static final AppColor onSecondaryLight = AppColor.hex('FFFFFF');
  static final AppColor secondaryContainerLight = AppColor.hex('CDE9DC');
  static final AppColor onSecondaryContainerLight = AppColor.hex('071F18');
  
  // Surface Colors
  static final AppColor surfaceLight = AppColor.hex('F7FBF7');
  static final AppColor onSurfaceLight = AppColor.hex('191D1A');
  static final AppColor surfaceVariantLight = AppColor.hex('DBE5DE');
  static final AppColor onSurfaceVariantLight = AppColor.hex('3F4944');
  static final AppColor surfaceDimLight = AppColor.hex('D7DBD8');
  static final AppColor surfaceBrightLight = AppColor.hex('F7FBF7');
  static final AppColor surfaceContainerLight = AppColor.hex('EBEFEC');
  static final AppColor surfaceContainerLowLight = AppColor.hex('F1F5F2');
  static final AppColor surfaceContainerHighLight = AppColor.hex('E5E9E6');
  static final AppColor surfaceContainerHighestLight = AppColor.hex('DFE4E0');
  
  // Error Colors
  static final AppColor errorLight = AppColor.hex('BA1A1A');
  static final AppColor onErrorLight = AppColor.hex('FFFFFF');
  static final AppColor errorContainerLight = AppColor.hex('FFDAD6');
  static final AppColor onErrorContainerLight = AppColor.hex('410002');
  
  // Outline Colors
  static final AppColor outlineLight = AppColor.hex('6F7974');
  static final AppColor outlineVariantLight = AppColor.hex('BFC9C2');
  
  // === DARK THEME COLORS ===
  
  // Primary Colors
  static final AppColor primaryDark = AppColor.hex('62DA9E');
  static final AppColor onPrimaryDark = AppColor.hex('003828');
  static final AppColor primaryContainerDark = AppColor.hex('004733');
  static final AppColor onPrimaryContainerDark = AppColor.hex('7EF6C2');
  
  // Secondary Colors
  static final AppColor secondaryDark = AppColor.hex('B1CDC0');
  static final AppColor onSecondaryDark = AppColor.hex('1C352C');
  static final AppColor secondaryContainerDark = AppColor.hex('334B42');
  static final AppColor onSecondaryContainerDark = AppColor.hex('CDE9DC');
  
  // Surface Colors
  static final AppColor surfaceDark = AppColor.hex('0F1512');
  static final AppColor onSurfaceDark = AppColor.hex('DFE4E0');
  static final AppColor surfaceVariantDark = AppColor.hex('3F4944');
  static final AppColor onSurfaceVariantDark = AppColor.hex('BFC9C2');
  static final AppColor surfaceDimDark = AppColor.hex('0F1512');
  static final AppColor surfaceBrightDark = AppColor.hex('353B36');
  static final AppColor surfaceContainerDark = AppColor.hex('1D211E');
  static final AppColor surfaceContainerLowDark = AppColor.hex('191D1A');
  static final AppColor surfaceContainerHighDark = AppColor.hex('272B28');
  static final AppColor surfaceContainerHighestDark = AppColor.hex('323633');
  
  // Error Colors
  static final AppColor errorDark = AppColor.hex('FFB4AB');
  static final AppColor onErrorDark = AppColor.hex('690005');
  static final AppColor errorContainerDark = AppColor.hex('93000A');
  static final AppColor onErrorContainerDark = AppColor.hex('FFDAD6');
  
  // Outline Colors
  static final AppColor outlineDark = AppColor.hex('89938E');
  static final AppColor outlineVariantDark = AppColor.hex('3F4944');
  
  // === BRAND COLORS ===
  static final AppColor huntingtonGreen = AppColor.hex('00573F');
  static final AppColor huntingtonGreenDark = AppColor.hex('003E2C');
  static final AppColor huntingtonBlue = AppColor.hex('005577');
  static final AppColor huntingtonBlueDark = AppColor.hex('003D5A');
  
  // Dark theme brand colors
  static final AppColor huntingtonGreenDarkTheme = AppColor.hex('62DA9E');
  static final AppColor huntingtonBlueDarkTheme = AppColor.hex('66CCF5');
  
  // === FUNCTIONAL COLORS ===
  
  // Success
  static final AppColor successLight = AppColor.hex('006C4C');
  static final AppColor successContainerLight = AppColor.hex('7EF6C2');
  static final AppColor onSuccessLight = AppColor.hex('FFFFFF');
  static final AppColor onSuccessContainerLight = AppColor.hex('00201D');
  
  static final AppColor successDark = AppColor.hex('62DA9E');
  static final AppColor successContainerDark = AppColor.hex('004733');
  static final AppColor onSuccessDark = AppColor.hex('003828');
  static final AppColor onSuccessContainerDark = AppColor.hex('7EF6C2');
  
  // Warning
  static final AppColor warningLight = AppColor.hex('8A5A00');
  static final AppColor warningContainerLight = AppColor.hex('FFDDB5');
  static final AppColor onWarningLight = AppColor.hex('FFFFFF');
  static final AppColor onWarningContainerLight = AppColor.hex('2D1B00');
  
  static final AppColor warningDark = AppColor.hex('FFB951');
  static final AppColor warningContainerDark = AppColor.hex('8A5A00');
  static final AppColor onWarningDark = AppColor.hex('2D1B00');
  static final AppColor onWarningContainerDark = AppColor.hex('FFDDB5');
  
  // Info
  static final AppColor infoLight = AppColor.hex('006494');
  static final AppColor infoContainerLight = AppColor.hex('C4E7FD');
  static final AppColor onInfoLight = AppColor.hex('FFFFFF');
  static final AppColor onInfoContainerLight = AppColor.hex('001E2E');
  
  static final AppColor infoDark = AppColor.hex('66CCF5');
  static final AppColor infoContainerDark = AppColor.hex('284A5C');
  static final AppColor onInfoDark = AppColor.hex('0E344B');
  static final AppColor onInfoContainerDark = AppColor.hex('C4E7FD');
  
  // === TEXT SEMANTIC COLORS ===
  
  // Light theme text
  static final AppColor textPrimaryLight = AppColor.hex('191D1A');
  static final AppColor textSecondaryLight = AppColor.hex('3F4944');
  static final AppColor textTertiaryLight = AppColor.hex('6F7974');
  static final AppColor textDisabledLight = AppColor.hex('BFC9C2');
  
  // Dark theme text
  static final AppColor textPrimaryDark = AppColor.hex('DFE4E0');
  static final AppColor textSecondaryDark = AppColor.hex('BFC9C2');
  static final AppColor textTertiaryDark = AppColor.hex('89938E');
  static final AppColor textDisabledDark = AppColor.hex('3F4944');
  
  // === BORDER COLORS ===
  
  // Light theme borders
  static final AppColor borderLight = AppColor.hex('BFC9C2');
  static final AppColor borderSubtleLight = AppColor.hex('DBE5DE');
  
  // Dark theme borders
  static final AppColor borderDark = AppColor.hex('89938E');
  static final AppColor borderSubtleDark = AppColor.hex('3F4944');
}

/// Light theme color system implementation
class SampleLightColors implements AppColorSystem {
  const SampleLightColors();
  
  @override
  bool get isDark => false;
  
  // Primary colors
  @override
  AppColor get primary => SampleColors.primaryLight;
  @override
  AppColor get onPrimary => SampleColors.onPrimaryLight;
  @override
  AppColor get primaryContainer => SampleColors.primaryContainerLight;
  @override
  AppColor get onPrimaryContainer => SampleColors.onPrimaryContainerLight;
  
  // Secondary colors
  @override
  AppColor get secondary => SampleColors.secondaryLight;
  @override
  AppColor get onSecondary => SampleColors.onSecondaryLight;
  @override
  AppColor get secondaryContainer => SampleColors.secondaryContainerLight;
  @override
  AppColor get onSecondaryContainer => SampleColors.onSecondaryContainerLight;
  
  // Surface colors
  @override
  AppColor get surface => SampleColors.surfaceLight;
  @override
  AppColor get onSurface => SampleColors.onSurfaceLight;
  @override
  AppColor get surfaceVariant => SampleColors.surfaceVariantLight;
  @override
  AppColor get onSurfaceVariant => SampleColors.onSurfaceVariantLight;
  @override
  AppColor get surfaceDim => SampleColors.surfaceDimLight;
  @override
  AppColor get surfaceBright => SampleColors.surfaceBrightLight;
  @override
  AppColor get surfaceContainer => SampleColors.surfaceContainerLight;
  @override
  AppColor get surfaceContainerLow => SampleColors.surfaceContainerLowLight;
  @override
  AppColor get surfaceContainerHigh => SampleColors.surfaceContainerHighLight;
  @override
  AppColor get surfaceContainerHighest => SampleColors.surfaceContainerHighestLight;
  
  // Error colors
  @override
  AppColor get error => SampleColors.errorLight;
  @override
  AppColor get onError => SampleColors.onErrorLight;
  @override
  AppColor get errorContainer => SampleColors.errorContainerLight;
  @override
  AppColor get onErrorContainer => SampleColors.onErrorContainerLight;
  
  // Brand colors
  @override
  AppColor get huntingtonGreen => SampleColors.huntingtonGreen;
  @override
  AppColor get huntingtonGreenDark => SampleColors.huntingtonGreenDark;
  @override
  AppColor get huntingtonBlue => SampleColors.huntingtonBlue;
  @override
  AppColor get huntingtonBlueDark => SampleColors.huntingtonBlueDark;
  
  // Functional colors
  @override
  AppColor get success => SampleColors.successLight;
  @override
  AppColor get successContainer => SampleColors.successContainerLight;
  @override
  AppColor get onSuccess => SampleColors.onSuccessLight;
  @override
  AppColor get onSuccessContainer => SampleColors.onSuccessContainerLight;
  
  @override
  AppColor get warning => SampleColors.warningLight;
  @override
  AppColor get warningContainer => SampleColors.warningContainerLight;
  @override
  AppColor get onWarning => SampleColors.onWarningLight;
  @override
  AppColor get onWarningContainer => SampleColors.onWarningContainerLight;
  
  @override
  AppColor get info => SampleColors.infoLight;
  @override
  AppColor get infoContainer => SampleColors.infoContainerLight;
  @override
  AppColor get onInfo => SampleColors.onInfoLight;
  @override
  AppColor get onInfoContainer => SampleColors.onInfoContainerLight;
  
  // Text colors
  @override
  AppColor get textPrimary => SampleColors.textPrimaryLight;
  @override
  AppColor get textSecondary => SampleColors.textSecondaryLight;
  @override
  AppColor get textTertiary => SampleColors.textTertiaryLight;
  @override
  AppColor get textDisabled => SampleColors.textDisabledLight;
  
  // Border colors
  @override
  AppColor get outline => SampleColors.outlineLight;
  @override
  AppColor get outlineVariant => SampleColors.outlineVariantLight;
  @override
  AppColor get border => SampleColors.borderLight;
  @override
  AppColor get borderSubtle => SampleColors.borderSubtleLight;
}

/// Dark theme color system implementation
class SampleDarkColors implements AppColorSystem {
  const SampleDarkColors();
  
  @override
  bool get isDark => true;
  
  // Primary colors
  @override
  AppColor get primary => SampleColors.primaryDark;
  @override
  AppColor get onPrimary => SampleColors.onPrimaryDark;
  @override
  AppColor get primaryContainer => SampleColors.primaryContainerDark;
  @override
  AppColor get onPrimaryContainer => SampleColors.onPrimaryContainerDark;
  
  // Secondary colors
  @override
  AppColor get secondary => SampleColors.secondaryDark;
  @override
  AppColor get onSecondary => SampleColors.onSecondaryDark;
  @override
  AppColor get secondaryContainer => SampleColors.secondaryContainerDark;
  @override
  AppColor get onSecondaryContainer => SampleColors.onSecondaryContainerDark;
  
  // Surface colors
  @override
  AppColor get surface => SampleColors.surfaceDark;
  @override
  AppColor get onSurface => SampleColors.onSurfaceDark;
  @override
  AppColor get surfaceVariant => SampleColors.surfaceVariantDark;
  @override
  AppColor get onSurfaceVariant => SampleColors.onSurfaceVariantDark;
  @override
  AppColor get surfaceDim => SampleColors.surfaceDimDark;
  @override
  AppColor get surfaceBright => SampleColors.surfaceBrightDark;
  @override
  AppColor get surfaceContainer => SampleColors.surfaceContainerDark;
  @override
  AppColor get surfaceContainerLow => SampleColors.surfaceContainerLowDark;
  @override
  AppColor get surfaceContainerHigh => SampleColors.surfaceContainerHighDark;
  @override
  AppColor get surfaceContainerHighest => SampleColors.surfaceContainerHighestDark;
  
  // Error colors
  @override
  AppColor get error => SampleColors.errorDark;
  @override
  AppColor get onError => SampleColors.onErrorDark;
  @override
  AppColor get errorContainer => SampleColors.errorContainerDark;
  @override
  AppColor get onErrorContainer => SampleColors.onErrorContainerDark;
  
  // Brand colors (use dark theme variants)
  @override
  AppColor get huntingtonGreen => SampleColors.huntingtonGreenDarkTheme;
  @override
  AppColor get huntingtonGreenDark => SampleColors.huntingtonGreen;
  @override
  AppColor get huntingtonBlue => SampleColors.huntingtonBlueDarkTheme;
  @override
  AppColor get huntingtonBlueDark => SampleColors.huntingtonBlue;
  
  // Functional colors
  @override
  AppColor get success => SampleColors.successDark;
  @override
  AppColor get successContainer => SampleColors.successContainerDark;
  @override
  AppColor get onSuccess => SampleColors.onSuccessDark;
  @override
  AppColor get onSuccessContainer => SampleColors.onSuccessContainerDark;
  
  @override
  AppColor get warning => SampleColors.warningDark;
  @override
  AppColor get warningContainer => SampleColors.warningContainerDark;
  @override
  AppColor get onWarning => SampleColors.onWarningDark;
  @override
  AppColor get onWarningContainer => SampleColors.onWarningContainerDark;
  
  @override
  AppColor get info => SampleColors.infoDark;
  @override
  AppColor get infoContainer => SampleColors.infoContainerDark;
  @override
  AppColor get onInfo => SampleColors.onInfoDark;
  @override
  AppColor get onInfoContainer => SampleColors.onInfoContainerDark;
  
  // Text colors
  @override
  AppColor get textPrimary => SampleColors.textPrimaryDark;
  @override
  AppColor get textSecondary => SampleColors.textSecondaryDark;
  @override
  AppColor get textTertiary => SampleColors.textTertiaryDark;
  @override
  AppColor get textDisabled => SampleColors.textDisabledDark;
  
  // Border colors
  @override
  AppColor get outline => SampleColors.outlineDark;
  @override
  AppColor get outlineVariant => SampleColors.outlineVariantDark;
  @override
  AppColor get border => SampleColors.borderDark;
  @override
  AppColor get borderSubtle => SampleColors.borderSubtleDark;
}