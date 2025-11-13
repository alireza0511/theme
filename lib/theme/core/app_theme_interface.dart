/// Core theme interface that defines what your app needs without exposing Material APIs
/// This acts as a stable contract that won't change when Material Design versions change
abstract class AppThemeInterface {
  /// Color system for the app
  AppColorSystem get colors;
  
  /// Typography system for the app
  AppTypographySystem get typography;
  
  /// Spacing system for the app
  AppSpacingSystem get spacing;
  
  /// Whether this is a dark theme
  bool get isDark;
  
  /// Theme identifier
  String get name;
}

/// Abstract color system - no Material APIs exposed
abstract class AppColorSystem {
  // === PRIMARY COLORS ===
  AppColor get primary;
  AppColor get onPrimary;
  AppColor get primaryContainer;
  AppColor get onPrimaryContainer;
  
  // === SECONDARY COLORS ===
  AppColor get secondary;
  AppColor get onSecondary;
  AppColor get secondaryContainer;
  AppColor get onSecondaryContainer;
  
  // === SURFACE COLORS ===
  AppColor get surface;
  AppColor get onSurface;
  AppColor get surfaceVariant;
  AppColor get onSurfaceVariant;
  AppColor get surfaceDim;
  AppColor get surfaceBright;
  AppColor get surfaceContainer;
  AppColor get surfaceContainerLow;
  AppColor get surfaceContainerHigh;
  AppColor get surfaceContainerHighest;
  
  // === ERROR COLORS ===
  AppColor get error;
  AppColor get onError;
  AppColor get errorContainer;
  AppColor get onErrorContainer;
  
  // === HUNTINGTON BRAND COLORS ===
  AppColor get huntingtonGreen;
  AppColor get huntingtonGreenDark;
  AppColor get huntingtonBlue;
  AppColor get huntingtonBlueDark;
  
  // === FUNCTIONAL COLORS ===
  AppColor get success;
  AppColor get successContainer;
  AppColor get onSuccess;
  AppColor get onSuccessContainer;
  
  AppColor get warning;
  AppColor get warningContainer; 
  AppColor get onWarning;
  AppColor get onWarningContainer;
  
  AppColor get info;
  AppColor get infoContainer;
  AppColor get onInfo;
  AppColor get onInfoContainer;
  
  // === TEXT SEMANTIC COLORS ===
  AppColor get textPrimary;
  AppColor get textSecondary;
  AppColor get textTertiary;
  AppColor get textDisabled;
  
  // === BORDER COLORS ===
  AppColor get outline;
  AppColor get outlineVariant;
  AppColor get border;
  AppColor get borderSubtle;
  
  /// Whether this is a dark color scheme
  bool get isDark;
}

/// Abstract typography system - no Material APIs exposed
abstract class AppTypographySystem {
  // === DISPLAY SCALE ===
  AppTextStyle get displayLarge;
  AppTextStyle get displayMedium;
  AppTextStyle get displaySmall;
  
  // === HEADLINE SCALE ===
  AppTextStyle get headlineLarge;
  AppTextStyle get headlineMedium;
  AppTextStyle get headlineSmall;
  
  // === TITLE SCALE ===
  AppTextStyle get titleLarge;
  AppTextStyle get titleMedium;
  AppTextStyle get titleSmall;
  
  // === BODY SCALE ===
  AppTextStyle get bodyLarge;
  AppTextStyle get bodyMedium;
  AppTextStyle get bodySmall;
  
  // === LABEL SCALE ===
  AppTextStyle get labelLarge;
  AppTextStyle get labelMedium;
  AppTextStyle get labelSmall;
  
  // === BRAND TYPOGRAPHY ===
  AppTextStyle get brandDisplay;
  AppTextStyle get brandHeadline;
  AppTextStyle get brandTitle;
  AppTextStyle get brandBody;
  AppTextStyle get brandCaption;
  
  // === FUNCTIONAL TYPOGRAPHY ===
  AppTextStyle get buttonLarge;
  AppTextStyle get buttonMedium;
  AppTextStyle get buttonSmall;
  
  AppTextStyle get inputLabel;
  AppTextStyle get inputText;
  AppTextStyle get inputHelper;
  AppTextStyle get inputError;
  
  // === SPECIALIZED TYPOGRAPHY ===
  AppTextStyle get currencyLarge;
  AppTextStyle get currencyMedium;
  AppTextStyle get currencySmall;
  AppTextStyle get percentage;
  AppTextStyle get navigationLabel;
}

/// Abstract spacing system
abstract class AppSpacingSystem {
  double get xs;     // 4
  double get sm;     // 8
  double get md;     // 16
  double get lg;     // 24
  double get xl;     // 32
  double get xxl;    // 48
  double get xxxl;   // 64
  
  // Semantic spacing
  double get buttonPadding;
  double get cardPadding;
  double get inputPadding;
  double get sectionGap;
}

/// Color wrapper that encapsulates color implementation
class AppColor {
  const AppColor._(this._value);
  
  final int _value;
  
  /// Create from hex string
  factory AppColor.hex(String hex) {
    final hexColor = hex.replaceAll('#', '');
    return AppColor._(int.parse('FF$hexColor', radix: 16));
  }
  
  /// Create from RGB values
  factory AppColor.rgb(int r, int g, int b) {
    return AppColor._(0xFF000000 | (r << 16) | (g << 8) | b);
  }
  
  /// Get hex representation
  String get hex => '#${(_value & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
  
  /// Get RGB values
  int get red => (_value >> 16) & 0xFF;
  int get green => (_value >> 8) & 0xFF;
  int get blue => _value & 0xFF;
  
  /// Create with opacity
  AppColor withOpacity(double opacity) {
    final alpha = (255 * opacity).round();
    return AppColor._((alpha << 24) | (_value & 0xFFFFFF));
  }
  
  /// Internal value for Material adapter (only used by theme system)
  int get _materialValue => _value;
  
  @override
  String toString() => 'AppColor($hex)';
  
  @override
  bool operator ==(Object other) =>
      identical(this, other) || 
      other is AppColor && other._value == _value;
  
  @override
  int get hashCode => _value.hashCode;
}

/// Text style wrapper that encapsulates text style implementation
class AppTextStyle {
  const AppTextStyle._({
    required this.fontSize,
    required this.fontWeight,
    required this.letterSpacing,
    required this.lineHeight,
    required this.fontFamily,
  });
  
  final double fontSize;
  final int fontWeight; // 100-900
  final double letterSpacing;
  final double lineHeight;
  final String fontFamily;
  
  /// Create text style
  factory AppTextStyle.create({
    required double fontSize,
    int fontWeight = 400,
    double letterSpacing = 0.0,
    double lineHeight = 1.0,
    String fontFamily = 'Roboto',
  }) {
    return AppTextStyle._(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      lineHeight: lineHeight,
      fontFamily: fontFamily,
    );
  }
  
  /// Copy with modifications
  AppTextStyle copyWith({
    double? fontSize,
    int? fontWeight,
    double? letterSpacing,
    double? lineHeight,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      lineHeight: lineHeight ?? this.lineHeight,
      fontFamily: fontFamily ?? this.fontFamily,
    );
  }
  
  /// Create bold variant
  AppTextStyle get bold => copyWith(fontWeight: 700);
  
  /// Create medium variant
  AppTextStyle get medium => copyWith(fontWeight: 500);
  
  /// Scale the font size
  AppTextStyle scale(double factor) => copyWith(fontSize: fontSize * factor);
  
  @override
  String toString() => 'AppTextStyle(${fontSize}sp, $fontWeight, $fontFamily)';
}