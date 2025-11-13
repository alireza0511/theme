import 'package:flutter/material.dart';
import 'core/app_theme_interface.dart';

/// Material 3 adapter that converts our app theme to Flutter ThemeData
/// 
/// This is the ONLY place where Material Design APIs are used.
/// All Material-specific code is isolated here for easy future migration.
class MaterialThemeAdapter {
  MaterialThemeAdapter._();
  
  /// Convert app theme to Material 3 ThemeData
  static ThemeData toMaterialTheme(AppThemeInterface appTheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _buildColorScheme(appTheme.colors),
      textTheme: _buildTextTheme(appTheme.typography),
      appBarTheme: _buildAppBarTheme(appTheme),
      cardTheme: _buildCardTheme(appTheme),
      elevatedButtonTheme: _buildElevatedButtonTheme(appTheme),
      outlinedButtonTheme: _buildOutlinedButtonTheme(appTheme),
      textButtonTheme: _buildTextButtonTheme(appTheme),
      filledButtonTheme: _buildFilledButtonTheme(appTheme),
      inputDecorationTheme: _buildInputDecorationTheme(appTheme),
      floatingActionButtonTheme: _buildFABTheme(appTheme),
      dialogTheme: _buildDialogTheme(appTheme),
      bottomSheetTheme: _buildBottomSheetTheme(appTheme),
      snackBarTheme: _buildSnackBarTheme(appTheme),
      dividerTheme: _buildDividerTheme(appTheme),
      listTileTheme: _buildListTileTheme(appTheme),
      navigationBarTheme: _buildNavigationBarTheme(appTheme),
      navigationDrawerTheme: _buildNavigationDrawerTheme(appTheme),
      chipTheme: _buildChipTheme(appTheme),
      switchTheme: _buildSwitchTheme(appTheme),
      checkboxTheme: _buildCheckboxTheme(appTheme),
      radioTheme: _buildRadioTheme(appTheme),
      sliderTheme: _buildSliderTheme(appTheme),
      progressIndicatorTheme: _buildProgressIndicatorTheme(appTheme),
      tabBarTheme: _buildTabBarTheme(appTheme),
    );
  }
  
  /// Build Material 3 ColorScheme from app colors
  static ColorScheme _buildColorScheme(AppColorSystem colors) {
    return ColorScheme(
      brightness: colors.isDark ? Brightness.dark : Brightness.light,
      
      // Primary colors
      primary: _toColor(colors.primary),
      onPrimary: _toColor(colors.onPrimary),
      primaryContainer: _toColor(colors.primaryContainer),
      onPrimaryContainer: _toColor(colors.onPrimaryContainer),
      
      // Secondary colors
      secondary: _toColor(colors.secondary),
      onSecondary: _toColor(colors.onSecondary),
      secondaryContainer: _toColor(colors.secondaryContainer),
      onSecondaryContainer: _toColor(colors.onSecondaryContainer),
      
      // Tertiary colors (use secondary as fallback)
      tertiary: _toColor(colors.secondary),
      onTertiary: _toColor(colors.onSecondary),
      tertiaryContainer: _toColor(colors.secondaryContainer),
      onTertiaryContainer: _toColor(colors.onSecondaryContainer),
      
      // Error colors
      error: _toColor(colors.error),
      onError: _toColor(colors.onError),
      errorContainer: _toColor(colors.errorContainer),
      onErrorContainer: _toColor(colors.onErrorContainer),
      
      // Surface colors
      surface: _toColor(colors.surface),
      onSurface: _toColor(colors.onSurface),
      surfaceVariant: _toColor(colors.surfaceVariant),
      onSurfaceVariant: _toColor(colors.onSurfaceVariant),
      
      // Outline colors
      outline: _toColor(colors.outline),
      outlineVariant: _toColor(colors.outlineVariant),
      
      // Additional Material 3 colors
      shadow: const Color(0xFF000000),
      scrim: const Color(0xFF000000),
      inverseSurface: _toColor(colors.onSurface),
      onInverseSurface: _toColor(colors.surface),
      inversePrimary: _toColor(colors.primaryContainer),
      surfaceTint: _toColor(colors.primary),
    );
  }
  
  /// Build Material TextTheme from app typography
  static TextTheme _buildTextTheme(AppTypographySystem typography) {
    return TextTheme(
      // Display scale
      displayLarge: _toTextStyle(typography.displayLarge),
      displayMedium: _toTextStyle(typography.displayMedium),
      displaySmall: _toTextStyle(typography.displaySmall),
      
      // Headline scale
      headlineLarge: _toTextStyle(typography.headlineLarge),
      headlineMedium: _toTextStyle(typography.headlineMedium),
      headlineSmall: _toTextStyle(typography.headlineSmall),
      
      // Title scale
      titleLarge: _toTextStyle(typography.titleLarge),
      titleMedium: _toTextStyle(typography.titleMedium),
      titleSmall: _toTextStyle(typography.titleSmall),
      
      // Body scale
      bodyLarge: _toTextStyle(typography.bodyLarge),
      bodyMedium: _toTextStyle(typography.bodyMedium),
      bodySmall: _toTextStyle(typography.bodySmall),
      
      // Label scale
      labelLarge: _toTextStyle(typography.labelLarge),
      labelMedium: _toTextStyle(typography.labelMedium),
      labelSmall: _toTextStyle(typography.labelSmall),
    );
  }
  
  /// Build AppBar theme
  static AppBarTheme _buildAppBarTheme(AppThemeInterface appTheme) {
    return AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: _toColor(appTheme.colors.surface),
      foregroundColor: _toColor(appTheme.colors.onSurface),
      surfaceTintColor: _toColor(appTheme.colors.primary),
      titleTextStyle: _toTextStyle(appTheme.typography.titleLarge).copyWith(
        color: _toColor(appTheme.colors.onSurface),
      ),
      iconTheme: IconThemeData(
        color: _toColor(appTheme.colors.onSurface),
      ),
      actionsIconTheme: IconThemeData(
        color: _toColor(appTheme.colors.onSurface),
      ),
    );
  }
  
  /// Build Card theme
  static CardTheme _buildCardTheme(AppThemeInterface appTheme) {
    return CardTheme(
      elevation: 1,
      color: _toColor(appTheme.colors.surfaceContainer),
      surfaceTintColor: _toColor(appTheme.colors.primary),
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.md),
      ),
      margin: EdgeInsets.all(appTheme.spacing.sm),
    );
  }
  
  /// Build ElevatedButton theme
  static ElevatedButtonThemeData _buildElevatedButtonTheme(AppThemeInterface appTheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _toColor(appTheme.colors.primary),
        foregroundColor: _toColor(appTheme.colors.onPrimary),
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(appTheme.spacing.md),
        ),
        textStyle: _toTextStyle(appTheme.typography.buttonMedium),
        padding: EdgeInsets.symmetric(
          horizontal: appTheme.spacing.lg,
          vertical: appTheme.spacing.md,
        ),
      ),
    );
  }
  
  /// Build OutlinedButton theme
  static OutlinedButtonThemeData _buildOutlinedButtonTheme(AppThemeInterface appTheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _toColor(appTheme.colors.primary),
        side: BorderSide(color: _toColor(appTheme.colors.primary)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(appTheme.spacing.md),
        ),
        textStyle: _toTextStyle(appTheme.typography.buttonMedium),
        padding: EdgeInsets.symmetric(
          horizontal: appTheme.spacing.lg,
          vertical: appTheme.spacing.md,
        ),
      ),
    );
  }
  
  /// Build TextButton theme
  static TextButtonThemeData _buildTextButtonTheme(AppThemeInterface appTheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _toColor(appTheme.colors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(appTheme.spacing.md),
        ),
        textStyle: _toTextStyle(appTheme.typography.buttonMedium),
        padding: EdgeInsets.symmetric(
          horizontal: appTheme.spacing.md,
          vertical: appTheme.spacing.sm,
        ),
      ),
    );
  }
  
  /// Build FilledButton theme
  static FilledButtonThemeData _buildFilledButtonTheme(AppThemeInterface appTheme) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: _toColor(appTheme.colors.primaryContainer),
        foregroundColor: _toColor(appTheme.colors.onPrimaryContainer),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(appTheme.spacing.md),
        ),
        textStyle: _toTextStyle(appTheme.typography.buttonMedium),
        padding: EdgeInsets.symmetric(
          horizontal: appTheme.spacing.lg,
          vertical: appTheme.spacing.md,
        ),
      ),
    );
  }
  
  /// Build InputDecoration theme
  static InputDecorationTheme _buildInputDecorationTheme(AppThemeInterface appTheme) {
    return InputDecorationTheme(
      filled: true,
      fillColor: _toColor(appTheme.colors.surfaceVariant).withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
        borderSide: BorderSide(color: _toColor(appTheme.colors.outline)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
        borderSide: BorderSide(color: _toColor(appTheme.colors.outline)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
        borderSide: BorderSide(color: _toColor(appTheme.colors.primary), width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
        borderSide: BorderSide(color: _toColor(appTheme.colors.error)),
      ),
      labelStyle: _toTextStyle(appTheme.typography.inputLabel).copyWith(
        color: _toColor(appTheme.colors.onSurfaceVariant),
      ),
      hintStyle: _toTextStyle(appTheme.typography.inputText).copyWith(
        color: _toColor(appTheme.colors.onSurfaceVariant).withOpacity(0.6),
      ),
      helperStyle: _toTextStyle(appTheme.typography.inputHelper).copyWith(
        color: _toColor(appTheme.colors.onSurfaceVariant),
      ),
      errorStyle: _toTextStyle(appTheme.typography.inputError).copyWith(
        color: _toColor(appTheme.colors.error),
      ),
      contentPadding: EdgeInsets.all(appTheme.spacing.inputPadding),
    );
  }
  
  /// Build FloatingActionButton theme
  static FloatingActionButtonThemeData _buildFABTheme(AppThemeInterface appTheme) {
    return FloatingActionButtonThemeData(
      backgroundColor: _toColor(appTheme.colors.primaryContainer),
      foregroundColor: _toColor(appTheme.colors.onPrimaryContainer),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.md),
      ),
    );
  }
  
  /// Build Dialog theme
  static DialogTheme _buildDialogTheme(AppThemeInterface appTheme) {
    return DialogTheme(
      backgroundColor: _toColor(appTheme.colors.surfaceContainerHigh),
      surfaceTintColor: _toColor(appTheme.colors.primary),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.lg),
      ),
      titleTextStyle: _toTextStyle(appTheme.typography.headlineSmall).copyWith(
        color: _toColor(appTheme.colors.onSurface),
      ),
      contentTextStyle: _toTextStyle(appTheme.typography.bodyMedium).copyWith(
        color: _toColor(appTheme.colors.onSurfaceVariant),
      ),
    );
  }
  
  /// Build other component themes...
  static BottomSheetThemeData _buildBottomSheetTheme(AppThemeInterface appTheme) {
    return BottomSheetThemeData(
      backgroundColor: _toColor(appTheme.colors.surfaceContainer),
      surfaceTintColor: _toColor(appTheme.colors.primary),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(appTheme.spacing.lg),
        ),
      ),
    );
  }
  
  static SnackBarThemeData _buildSnackBarTheme(AppThemeInterface appTheme) {
    return SnackBarThemeData(
      backgroundColor: _toColor(appTheme.colors.surface),
      contentTextStyle: _toTextStyle(appTheme.typography.bodyMedium).copyWith(
        color: _toColor(appTheme.colors.onSurface),
      ),
      actionTextColor: _toColor(appTheme.colors.primary),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
      ),
    );
  }
  
  static DividerThemeData _buildDividerTheme(AppThemeInterface appTheme) {
    return DividerThemeData(
      color: _toColor(appTheme.colors.outlineVariant),
      thickness: 1.0,
      space: appTheme.spacing.md,
    );
  }
  
  static ListTileThemeData _buildListTileTheme(AppThemeInterface appTheme) {
    return ListTileThemeData(
      tileColor: _toColor(appTheme.colors.surface),
      selectedTileColor: _toColor(appTheme.colors.secondaryContainer),
      textColor: _toColor(appTheme.colors.onSurface),
      selectedColor: _toColor(appTheme.colors.onSecondaryContainer),
      titleTextStyle: _toTextStyle(appTheme.typography.titleMedium),
      subtitleTextStyle: _toTextStyle(appTheme.typography.bodyMedium),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
      ),
      contentPadding: EdgeInsets.all(appTheme.spacing.md),
    );
  }
  
  static NavigationBarThemeData _buildNavigationBarTheme(AppThemeInterface appTheme) {
    return NavigationBarThemeData(
      backgroundColor: _toColor(appTheme.colors.surface),
      elevation: 2,
      surfaceTintColor: _toColor(appTheme.colors.primary),
      indicatorColor: _toColor(appTheme.colors.secondaryContainer),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _toTextStyle(appTheme.typography.navigationLabel).copyWith(
            color: _toColor(appTheme.colors.onSurface),
          );
        }
        return _toTextStyle(appTheme.typography.navigationLabel).copyWith(
          color: _toColor(appTheme.colors.onSurfaceVariant),
        );
      }),
    );
  }
  
  static NavigationDrawerThemeData _buildNavigationDrawerTheme(AppThemeInterface appTheme) {
    return NavigationDrawerThemeData(
      backgroundColor: _toColor(appTheme.colors.surface),
      surfaceTintColor: _toColor(appTheme.colors.primary),
      elevation: 1,
      indicatorColor: _toColor(appTheme.colors.secondaryContainer),
    );
  }
  
  static ChipThemeData _buildChipTheme(AppThemeInterface appTheme) {
    return ChipThemeData(
      backgroundColor: _toColor(appTheme.colors.surfaceContainer),
      selectedColor: _toColor(appTheme.colors.secondaryContainer),
      disabledColor: _toColor(appTheme.colors.surfaceVariant).withOpacity(0.12),
      labelStyle: _toTextStyle(appTheme.typography.labelMedium).copyWith(
        color: _toColor(appTheme.colors.onSurface),
      ),
      secondaryLabelStyle: _toTextStyle(appTheme.typography.labelMedium).copyWith(
        color: _toColor(appTheme.colors.onSecondaryContainer),
      ),
      side: BorderSide(color: _toColor(appTheme.colors.outline)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appTheme.spacing.sm),
      ),
    );
  }
  
  static SwitchThemeData _buildSwitchTheme(AppThemeInterface appTheme) {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _toColor(appTheme.colors.onPrimary);
        }
        return _toColor(appTheme.colors.outline);
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _toColor(appTheme.colors.primary);
        }
        return _toColor(appTheme.colors.surfaceVariant);
      }),
    );
  }
  
  static CheckboxThemeData _buildCheckboxTheme(AppThemeInterface appTheme) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _toColor(appTheme.colors.primary);
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(_toColor(appTheme.colors.onPrimary)),
      side: BorderSide(color: _toColor(appTheme.colors.outline), width: 2),
    );
  }
  
  static RadioThemeData _buildRadioTheme(AppThemeInterface appTheme) {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _toColor(appTheme.colors.primary);
        }
        return _toColor(appTheme.colors.outline);
      }),
    );
  }
  
  static SliderThemeData _buildSliderTheme(AppThemeInterface appTheme) {
    return SliderThemeData(
      activeTrackColor: _toColor(appTheme.colors.primary),
      inactiveTrackColor: _toColor(appTheme.colors.surfaceVariant),
      thumbColor: _toColor(appTheme.colors.primary),
      overlayColor: _toColor(appTheme.colors.primary).withOpacity(0.12),
    );
  }
  
  static ProgressIndicatorThemeData _buildProgressIndicatorTheme(AppThemeInterface appTheme) {
    return ProgressIndicatorThemeData(
      color: _toColor(appTheme.colors.primary),
      linearTrackColor: _toColor(appTheme.colors.surfaceVariant),
      circularTrackColor: _toColor(appTheme.colors.surfaceVariant),
    );
  }
  
  static TabBarTheme _buildTabBarTheme(AppThemeInterface appTheme) {
    return TabBarTheme(
      labelColor: _toColor(appTheme.colors.primary),
      unselectedLabelColor: _toColor(appTheme.colors.onSurfaceVariant),
      labelStyle: _toTextStyle(appTheme.typography.titleSmall),
      unselectedLabelStyle: _toTextStyle(appTheme.typography.titleSmall),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: _toColor(appTheme.colors.primary), width: 2),
      ),
    );
  }
  
  // === HELPER METHODS ===
  
  /// Convert AppColor to Flutter Color (only used within this adapter)
  static Color _toColor(AppColor appColor) {
    return Color(appColor._materialValue);
  }
  
  /// Convert AppTextStyle to Flutter TextStyle (only used within this adapter)
  static TextStyle _toTextStyle(AppTextStyle appTextStyle) {
    return TextStyle(
      fontSize: appTextStyle.fontSize,
      fontWeight: _toFontWeight(appTextStyle.fontWeight),
      letterSpacing: appTextStyle.letterSpacing,
      height: appTextStyle.lineHeight,
      fontFamily: appTextStyle.fontFamily,
    );
  }
  
  /// Convert font weight integer to FontWeight
  static FontWeight _toFontWeight(int weight) {
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