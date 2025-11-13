/// Sample Bank Design System
/// 
/// Complete Material 3 design system with API encapsulation
/// 
/// ## Architecture Benefits:
/// 
/// ✅ **Material 3 APIs Completely Isolated**
///    - All Flutter/Material APIs contained in MaterialThemeAdapter
///    - App code only uses AppThemeInterface
///    - Easy migration to future Material versions
/// 
/// ✅ **Hardcoded Values Preserved**
///    - All colors and text styles remain hardcoded for easy maintenance
///    - No complex token system or configuration files
///    - Direct modification of values in dedicated files
/// 
/// ✅ **Clean Application Interface**
///    - `context.colors.huntingtonGreen` - access colors
///    - `context.typography.brandDisplay` - access text styles  
///    - `context.spacing.lg` - access spacing
///    - `context.brandHeadlineText()` - create themed widgets
/// 
/// ✅ **Type Safety**
///    - AppColor and AppTextStyle prevent direct Material API exposure
///    - Compile-time safety for all theme values
///    - Clear interface contracts
/// 
/// ✅ **Future-Proof**
///    - Material 4 migration only requires updating MaterialThemeAdapter
///    - App code remains unchanged
///    - Theme system can evolve independently
/// 
/// ## Usage:
/// 
/// ```dart
/// // 1. Wrap your app with the theme provider
/// ChangeNotifierProvider(
///   create: (_) => AppThemeProvider(),
///   child: Consumer<AppThemeProvider>(
///     builder: (context, themeProvider, child) {
///       return MaterialApp(
///         theme: themeProvider.getLightMaterialTheme(),
///         darkTheme: themeProvider.getDarkMaterialTheme(),
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
///       context.brandDisplayText('Sample Bank'),
///       context.bodyText('Welcome to our app'),
///       context.verticalSpaceLG,
///       Container(
///         color: Color(context.colors.primary._materialValue),
///         child: context.titleText('Primary Color'),
///       ),
///     ],
///   );
/// }
/// 
/// // 3. Toggle theme
/// context.themeProvider.toggleTheme();
/// ```

library huntington_design_system;

// === CORE INTERFACES (App code uses these) ===
export 'core/app_theme_interface.dart';

// === THEME IMPLEMENTATION ===
export 'huntington_theme.dart';
export 'huntington_colors.dart';
export 'huntington_typography.dart';
export 'huntington_spacing.dart';

// === PROVIDER & EXTENSIONS ===
export 'theme_provider.dart';

// === MATERIAL ADAPTER (Only used internally) ===
// Note: material_adapter.dart is NOT exported to prevent direct usage
// It's only used internally by AppThemeProvider