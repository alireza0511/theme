import 'core/app_theme_interface.dart';
import 'huntington_colors.dart';
import 'huntington_typography.dart';
import 'huntington_spacing.dart';

/// Main Sample Bank theme implementation
/// 
/// This is your app's theme that implements the clean interface.
/// It contains NO Material Design APIs - those are handled by the adapter.
class SampleTheme implements AppThemeInterface {
  const SampleTheme._({
    required this.colors,
    required this.typography,
    required this.spacing,
    required this.isDark,
    required this.name,
  });
  
  @override
  final AppColorSystem colors;
  
  @override
  final AppTypographySystem typography;
  
  @override
  final AppSpacingSystem spacing;
  
  @override
  final bool isDark;
  
  @override
  final String name;
  
  /// Create light theme
  factory SampleTheme.light() {
    return const SampleTheme._(
      colors: SampleLightColors(),
      typography: SampleTypographySystem(),
      spacing: SampleSpacingSystem(),
      isDark: false,
      name: 'Sample Light',
    );
  }
  
  /// Create dark theme
  factory SampleTheme.dark() {
    return const SampleTheme._(
      colors: SampleDarkColors(),
      typography: SampleTypographySystem(),
      spacing: SampleSpacingSystem(),
      isDark: true,
      name: 'Sample Dark',
    );
  }
  
  /// Copy theme with modifications
  SampleTheme copyWith({
    AppColorSystem? colors,
    AppTypographySystem? typography,
    AppSpacingSystem? spacing,
    bool? isDark,
    String? name,
  }) {
    return SampleTheme._(
      colors: colors ?? this.colors,
      typography: typography ?? this.typography,
      spacing: spacing ?? this.spacing,
      isDark: isDark ?? this.isDark,
      name: name ?? this.name,
    );
  }
  
  @override
  String toString() => 'SampleTheme($name)';
}