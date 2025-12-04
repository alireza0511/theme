import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mosaic_theme_data.dart';
import 'mosaic_colors.dart';
import 'mosaic_typography.dart';
import 'mosaic_spacing.dart';

/// Theme provider that manages app theme state
class MosaicThemeProvider extends ChangeNotifier {
  MosaicThemeProvider({bool isDarkMode = false}) : _isDarkMode = isDarkMode;

  bool _isDarkMode;

  /// Current active app theme
  ThemeData get currentTheme =>
      _isDarkMode ? MosaicThemeData.darkTheme : MosaicThemeData.lightTheme;

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
}

/// Extension for easy theme access in widgets
extension MosaicThemeExtension on BuildContext {
  /// Get current app theme provider (listening to changes)
  MosaicThemeProvider get themeProvider =>
      Provider.of<MosaicThemeProvider>(this);

  /// Get current app theme provider (not listening to changes)
  MosaicThemeProvider get themeProviderStatic =>
      Provider.of<MosaicThemeProvider>(this, listen: false);

  /// Get current Material theme
  ThemeData get theme => Theme.of(this);

  /// Quick access to Mosaic Colors (listening to changes)
  MosaicColors get mosaicColors => theme.extension<MosaicColors>()!;

  /// Quick access to Mosaic Typography (listening to changes)
  MosaicTypography get mosaicTypography => theme.extension<MosaicTypography>()!;

  /// Quick access to Mosaic Spacing (listening to changes)
  MosaicSpacing get mosaicSpacing => theme.extension<MosaicSpacing>()!;

  /// Check if dark mode is active
  bool get isDarkTheme => theme.brightness == Brightness.dark;
}

/// Widget factory extensions for easy themed widget creation
extension MosaicWidgetExtensions on BuildContext {
  // === TEXT WIDGETS ===

  /// Create display text
  Widget displayText(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = true,
  }) {
    final style = large
        ? theme.textTheme.displayLarge
        : theme.textTheme.displayMedium;

    return Text(
      text,
      style: style?.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// Create headline text
  Widget headlineText(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = true,
  }) {
    final style = large
        ? theme.textTheme.headlineLarge
        : theme.textTheme.headlineMedium;

    return Text(
      text,
      style: style?.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// Create title text
  Widget titleText(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = false,
  }) {
    final style = large
        ? theme.textTheme.titleLarge
        : theme.textTheme.titleMedium;

    return Text(
      text,
      style: style?.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// Create body text
  Widget bodyText(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool large = false,
  }) {
    final style = large
        ? theme.textTheme.bodyLarge
        : theme.textTheme.bodyMedium;

    return Text(
      text,
      style: style?.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// Create brand display text
  Widget brandDisplayText(String text, {Color? color, TextAlign? textAlign}) {
    return Text(
      text,
      style: mosaicTypography.brandDisplay.copyWith(
        color: color ?? mosaicColors.huntingtonGreen,
      ),
      textAlign: textAlign,
    );
  }

  /// Create brand headline text
  Widget brandHeadlineText(String text, {Color? color, TextAlign? textAlign}) {
    return Text(
      text,
      style: mosaicTypography.brandHeadline.copyWith(
        color: color ?? mosaicColors.huntingtonGreen,
      ),
      textAlign: textAlign,
    );
  }

  /// Create currency text
  Widget currencyText(
    String amount, {
    Color? color,
    TextAlign? textAlign,
    bool large = false,
  }) {
    final style = large
        ? mosaicTypography.currencyLarge
        : mosaicTypography.currencyMedium;

    return Text(
      amount,
      style: style.copyWith(color: color),
      textAlign: textAlign,
    );
  }

  // === SPACING WIDGETS ===

  Widget get verticalSpaceXS => SizedBox(height: mosaicSpacing.xs);
  Widget get verticalSpaceSM => SizedBox(height: mosaicSpacing.sm);
  Widget get verticalSpaceMD => SizedBox(height: mosaicSpacing.md);
  Widget get verticalSpaceLG => SizedBox(height: mosaicSpacing.lg);
  Widget get verticalSpaceXL => SizedBox(height: mosaicSpacing.xl);

  Widget get horizontalSpaceXS => SizedBox(width: mosaicSpacing.xs);
  Widget get horizontalSpaceSM => SizedBox(width: mosaicSpacing.sm);
  Widget get horizontalSpaceMD => SizedBox(width: mosaicSpacing.md);
  Widget get horizontalSpaceLG => SizedBox(width: mosaicSpacing.lg);
  Widget get horizontalSpaceXL => SizedBox(width: mosaicSpacing.xl);
}
