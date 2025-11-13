import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

/// Simple theme provider for Sample Bank
class AppTheme {
  AppTheme._();
  
  /// Light theme
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: SampleColors.lightColorScheme,
    textTheme: SampleTextTheme.textTheme,
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: AppColors.surfaceLight,
      foregroundColor: AppColors.onSurfaceLight,
      titleTextStyle: AppTextStyles.titleLarge.copyWith(
        color: AppColors.onSurfaceLight,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: AppColors.surfaceLight,
      surfaceTintColor: AppColors.primaryLight,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.onPrimaryLight,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.buttonMedium,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        side: const BorderSide(color: AppColors.primaryLight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.buttonMedium,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceVariantLight.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.outlineLight),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.outlineLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.errorLight),
      ),
      labelStyle: AppTextStyles.inputLabel.copyWith(
        color: AppColors.onSurfaceVariantLight,
      ),
      hintStyle: AppTextStyles.inputText.copyWith(
        color: AppColors.onSurfaceVariantLight.withOpacity(0.6),
      ),
      helperStyle: AppTextStyles.inputHelper.copyWith(
        color: AppColors.onSurfaceVariantLight,
      ),
      errorStyle: AppTextStyles.inputError.copyWith(
        color: AppColors.errorLight,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryContainerLight,
      foregroundColor: AppColors.onPrimaryContainerLight,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
  
  /// Dark theme
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: SampleColors.darkColorScheme,
    textTheme: SampleTextTheme.textTheme,
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: AppColors.surfaceDark,
      foregroundColor: AppColors.onSurfaceDark,
      titleTextStyle: AppTextStyles.titleLarge.copyWith(
        color: AppColors.onSurfaceDark,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: AppColors.surfaceDark,
      surfaceTintColor: AppColors.primaryDark,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.onPrimaryDark,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.buttonMedium,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryDark,
        side: const BorderSide(color: AppColors.primaryDark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.buttonMedium,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceVariantDark.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.outlineDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.outlineDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryDark, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.errorDark),
      ),
      labelStyle: AppTextStyles.inputLabel.copyWith(
        color: AppColors.onSurfaceVariantDark,
      ),
      hintStyle: AppTextStyles.inputText.copyWith(
        color: AppColors.onSurfaceVariantDark.withOpacity(0.6),
      ),
      helperStyle: AppTextStyles.inputHelper.copyWith(
        color: AppColors.onSurfaceVariantDark,
      ),
      errorStyle: AppTextStyles.inputError.copyWith(
        color: AppColors.errorDark,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryContainerDark,
      foregroundColor: AppColors.onPrimaryContainerDark,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}

/// Theme mode provider
class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  
  bool get isDarkMode => _isDarkMode;
  
  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
  
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
  
  void setLightTheme() {
    if (_isDarkMode) {
      _isDarkMode = false;
      notifyListeners();
    }
  }
  
  void setDarkTheme() {
    if (!_isDarkMode) {
      _isDarkMode = true;
      notifyListeners();
    }
  }
}

/// Extension to access colors and text styles easily
extension ThemeExtension on BuildContext {
  /// Get current color scheme
  ColorScheme get colors => Theme.of(this).colorScheme;
  
  /// Get current text theme
  TextTheme get textStyles => Theme.of(this).textTheme;
  
  /// Get brand colors
  Color get huntingtonGreen => isDark ? AppColors.huntingtonGreenDarkTheme : AppColors.huntingtonGreen;
  Color get huntingtonBlue => isDark ? AppColors.huntingtonBlueDarkTheme : AppColors.huntingtonBlue;
  
  /// Check if dark mode
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
  
  /// Brand text styles
  TextStyle get brandDisplayStyle => AppTextStyles.brandDisplay;
  TextStyle get brandHeadlineStyle => AppTextStyles.brandHeadline;
  TextStyle get brandTitleStyle => AppTextStyles.brandTitle;
  TextStyle get brandBodyStyle => AppTextStyles.brandBody;
  
  /// Currency text styles
  TextStyle get currencyLargeStyle => AppTextStyles.currencyLarge;
  TextStyle get currencyMediumStyle => AppTextStyles.currencyMedium;
  TextStyle get currencySmallStyle => AppTextStyles.currencySmall;
}