/// Mosaic Design System
///
/// Complete Material 3 design system with API encapsulation
///
/// ## Usage:
///
/// ```dart
/// // 1. Wrap your app with the theme provider
/// ChangeNotifierProvider(
///   create: (_) => MosaicThemeProvider(),
///   child: Consumer<MosaicThemeProvider>(
///     builder: (context, themeProvider, child) {
///       return MaterialApp(
///         theme: themeProvider.currentTheme,
///         themeMode: themeProvider.themeMode,
///         home: MyHomePage(),
///       );
///     },
///   ),
/// )
///
/// // 2. Use theme in your widgets
/// Widget build(BuildContext context) {
///   return Column(
///     children: [
///       context.brandDisplayText('Mosaic Bank'),
///       context.bodyText('Welcome to our app'),
///       context.verticalSpaceLG,
///       Container(
///         color: context.mosaicColors.huntingtonGreen,
///         child: context.titleText('Brand Color'),
///       ),
///     ],
///   );
/// }
/// ```

library mosaic_design_system;

// === THEME IMPLEMENTATION ===
export 'mosaic_theme_data.dart';
export 'mosaic_colors.dart';
export 'mosaic_typography.dart';
export 'mosaic_spacing.dart';

// === PROVIDER & EXTENSIONS ===
export 'mosaic_theme_provider.dart';
