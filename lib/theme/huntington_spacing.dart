import 'core/app_theme_interface.dart';

/// Sample Bank spacing system implementation
class SampleSpacingSystem implements AppSpacingSystem {
  const SampleSpacingSystem();
  
  // Base spacing scale
  @override
  double get xs => 4.0;      // Extra small
  
  @override
  double get sm => 8.0;      // Small
  
  @override
  double get md => 16.0;     // Medium (base unit)
  
  @override
  double get lg => 24.0;     // Large
  
  @override
  double get xl => 32.0;     // Extra large
  
  @override
  double get xxl => 48.0;    // Double extra large
  
  @override
  double get xxxl => 64.0;   // Triple extra large
  
  // Semantic spacing for components
  @override
  double get buttonPadding => md;      // 16px
  
  @override
  double get cardPadding => lg;        // 24px
  
  @override
  double get inputPadding => md;       // 16px
  
  @override
  double get sectionGap => xxxl;       // 64px
  
  // Additional spacing utilities
  double get buttonGap => sm;          // 8px between buttons
  double get listItemGap => sm;        // 8px between list items
  double get iconGap => sm;            // 8px between icon and text
  double get screenPadding => lg;      // 24px screen edge padding
  double get cardGap => md;            // 16px between cards
  double get formGap => md;            // 16px between form elements
}