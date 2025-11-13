import 'package:flutter/material.dart';
import 'core/app_theme_interface.dart';
import 'huntington_theme.dart';
import 'material_adapter.dart';

/// Theme provider that manages app theme state and provides Material adaptation
/// 
/// This is the bridge between your app and the Material system.
/// Your app code only interacts with AppThemeInterface.
class AppThemeProvider extends ChangeNotifier {
  AppThemeProvider({
    AppThemeInterface? lightTheme,
    AppThemeInterface? darkTheme,
    bool? isDarkMode,
  }) : _lightTheme = lightTheme ?? SampleTheme.light(),
       _darkTheme = darkTheme ?? SampleTheme.dark(),
       _isDarkMode = isDarkMode ?? false;
  
  final AppThemeInterface _lightTheme;
  final AppThemeInterface _darkTheme;
  bool _isDarkMode;
  
  /// Current active app theme (NO Material APIs exposed)
  AppThemeInterface get currentTheme => _isDarkMode ? _darkTheme : _lightTheme;
  
  /// Light app theme
  AppThemeInterface get lightTheme => _lightTheme;
  
  /// Dark app theme
  AppThemeInterface get darkTheme => _darkTheme;
  
  /// Whether dark mode is active
  bool get isDarkMode => _isDarkMode;
  
  /// Theme mode for Material
  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
  
  /// Toggle between light and dark mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
  
  /// Set specific theme mode
  void setThemeMode(bool isDark) {
    if (_isDarkMode != isDark) {
      _isDarkMode = isDark;
      notifyListeners();
    }
  }
  
  /// Set theme based on system
  void setSystemTheme(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    setThemeMode(brightness == Brightness.dark);
  }
  
  /// Get Material ThemeData for Flutter (ONLY used by MaterialApp)
  /// 
  /// This is the ONLY method that exposes Material APIs.
  /// Your app widgets should NEVER call this directly.
  ThemeData getMaterialTheme() {
    return MaterialThemeAdapter.toMaterialTheme(currentTheme);
  }
  
  /// Get light Material ThemeData
  ThemeData getLightMaterialTheme() {
    return MaterialThemeAdapter.toMaterialTheme(_lightTheme);
  }
  
  /// Get dark Material ThemeData  
  ThemeData getDarkMaterialTheme() {
    return MaterialThemeAdapter.toMaterialTheme(_darkTheme);
  }
}

/// Extension for easy theme access in widgets
/// 
/// This provides a clean API for your app code without exposing Material APIs.
extension AppThemeExtension on BuildContext {
  /// Get current app theme provider (listening to changes)
  AppThemeProvider get themeProvider => 
      Provider.of<AppThemeProvider>(this);
      
  /// Get current app theme provider (not listening to changes)
  AppThemeProvider get themeProviderStatic => 
      Provider.of<AppThemeProvider>(this, listen: false);
  
  /// Get current app theme (listening to changes)
  AppThemeInterface get appTheme => themeProvider.currentTheme;
  
  /// Get current app theme (not listening to changes)
  AppThemeInterface get appThemeStatic => themeProviderStatic.currentTheme;
  
  /// Quick access to colors (listening to changes)
  AppColorSystem get colors => appTheme.colors;
  
  /// Quick access to typography (listening to changes)
  AppTypographySystem get typography => appTheme.typography;
  
  /// Quick access to spacing (listening to changes)
  AppSpacingSystem get spacing => appTheme.spacing;
  
  /// Check if dark mode is active
  bool get isDarkTheme => appTheme.isDark;
}

/// Widget factory extensions for easy themed widget creation
extension ThemedWidgetExtensions on BuildContext {
  
  // === TEXT WIDGETS ===
  
  /// Create display text
  Widget displayText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = true,
  }) {
    final style = large 
        ? typography.displayLarge 
        : typography.displayMedium;
    
    return AppText(
      text,
      style: style,
      color: color ?? colors.textPrimary,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
  
  /// Create headline text
  Widget headlineText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = true,
  }) {
    final style = large 
        ? typography.headlineLarge 
        : typography.headlineMedium;
    
    return AppText(
      text,
      style: style,
      color: color ?? colors.textPrimary,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
  
  /// Create title text
  Widget titleText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = false,
  }) {
    final style = large 
        ? typography.titleLarge 
        : typography.titleMedium;
    
    return AppText(
      text,
      style: style,
      color: color ?? colors.textPrimary,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
  
  /// Create body text
  Widget bodyText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = false,
  }) {
    final style = large 
        ? typography.bodyLarge 
        : typography.bodyMedium;
    
    return AppText(
      text,
      style: style,
      color: color ?? colors.textPrimary,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
  
  /// Create brand display text
  Widget brandDisplayText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
  }) {
    return AppText(
      text,
      style: typography.brandDisplay,
      color: color ?? colors.huntingtonGreen,
      textAlign: textAlign,
    );
  }
  
  /// Create brand headline text
  Widget brandHeadlineText(
    String text, {
    AppColor? color,
    TextAlign? textAlign,
  }) {
    return AppText(
      text,
      style: typography.brandHeadline,
      color: color ?? colors.huntingtonGreen,
      textAlign: textAlign,
    );
  }
  
  /// Create currency text
  Widget currencyText(
    String amount, {
    AppColor? color,
    TextAlign? textAlign,
    bool large = false,
  }) {
    final style = large 
        ? typography.currencyLarge 
        : typography.currencyMedium;
    
    return AppText(
      amount,
      style: style,
      color: color ?? colors.textPrimary,
      textAlign: textAlign,
    );
  }
  
  // === SPACING WIDGETS ===
  
  Widget get verticalSpaceXS => SizedBox(height: spacing.xs);
  Widget get verticalSpaceSM => SizedBox(height: spacing.sm);
  Widget get verticalSpaceMD => SizedBox(height: spacing.md);
  Widget get verticalSpaceLG => SizedBox(height: spacing.lg);
  Widget get verticalSpaceXL => SizedBox(height: spacing.xl);
  
  Widget get horizontalSpaceXS => SizedBox(width: spacing.xs);
  Widget get horizontalSpaceSM => SizedBox(width: spacing.sm);
  Widget get horizontalSpaceMD => SizedBox(width: spacing.md);
  Widget get horizontalSpaceLG => SizedBox(width: spacing.lg);
  Widget get horizontalSpaceXL => SizedBox(width: spacing.xl);
}

/// App text widget that uses our theme system instead of Material TextStyle
class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    required this.style,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });
  
  final String text;
  final AppTextStyle style;
  final AppColor? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: style.fontSize,
        fontWeight: _toFontWeight(style.fontWeight),
        letterSpacing: style.letterSpacing,
        height: style.lineHeight,
        fontFamily: style.fontFamily,
        color: color != null ? Color(color!._materialValue) : null,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
  
  FontWeight _toFontWeight(int weight) {
    switch (weight) {
      case 100: return FontWeight.w100;
      case 200: return FontWeight.w200;
      case 300: return FontWeight.w300;
      case 400: return FontWeight.w400;
      case 500: return FontWeight.w500;
      case 600: return FontWeight.w600;
      case 700: return FontWeight.w700;
      case 800: return FontWeight.w800;
      case 900: return FontWeight.w900;
      default: return FontWeight.w400;
    }
  }
}