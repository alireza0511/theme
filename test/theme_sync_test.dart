import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme/theme/mosaic_design_system.dart';

void main() {
  group('Mosaic Theme Synchronization', () {
    test('Light Theme ColorScheme matches MosaicColors', () {
      final theme = MosaicThemeData.lightTheme;
      final mosaicColors = theme.extension<MosaicColors>()!;
      final colorScheme = theme.colorScheme;

      // Verify all Material colors match
      expect(
        colorScheme.primary,
        mosaicColors.primary,
        reason: 'primary mismatch',
      );
      expect(
        colorScheme.onPrimary,
        mosaicColors.onPrimary,
        reason: 'onPrimary mismatch',
      );
      expect(
        colorScheme.primaryContainer,
        mosaicColors.primaryContainer,
        reason: 'primaryContainer mismatch',
      );
      expect(
        colorScheme.onPrimaryContainer,
        mosaicColors.onPrimaryContainer,
        reason: 'onPrimaryContainer mismatch',
      );

      expect(
        colorScheme.secondary,
        mosaicColors.secondary,
        reason: 'secondary mismatch',
      );
      expect(
        colorScheme.onSecondary,
        mosaicColors.onSecondary,
        reason: 'onSecondary mismatch',
      );
      expect(
        colorScheme.secondaryContainer,
        mosaicColors.secondaryContainer,
        reason: 'secondaryContainer mismatch',
      );
      expect(
        colorScheme.onSecondaryContainer,
        mosaicColors.onSecondaryContainer,
        reason: 'onSecondaryContainer mismatch',
      );

      expect(
        colorScheme.tertiary,
        mosaicColors.tertiary,
        reason: 'tertiary mismatch',
      );
      expect(
        colorScheme.onTertiary,
        mosaicColors.onTertiary,
        reason: 'onTertiary mismatch',
      );
      expect(
        colorScheme.tertiaryContainer,
        mosaicColors.tertiaryContainer,
        reason: 'tertiaryContainer mismatch',
      );
      expect(
        colorScheme.onTertiaryContainer,
        mosaicColors.onTertiaryContainer,
        reason: 'onTertiaryContainer mismatch',
      );

      expect(colorScheme.error, mosaicColors.error, reason: 'error mismatch');
      expect(
        colorScheme.onError,
        mosaicColors.onError,
        reason: 'onError mismatch',
      );
      expect(
        colorScheme.errorContainer,
        mosaicColors.errorContainer,
        reason: 'errorContainer mismatch',
      );
      expect(
        colorScheme.onErrorContainer,
        mosaicColors.onErrorContainer,
        reason: 'onErrorContainer mismatch',
      );

      expect(
        colorScheme.surface,
        mosaicColors.surface,
        reason: 'surface mismatch',
      );
      expect(
        colorScheme.onSurface,
        mosaicColors.onSurface,
        reason: 'onSurface mismatch',
      );
      expect(
        colorScheme.surfaceContainerHighest,
        mosaicColors.surfaceContainerHighest,
        reason: 'surfaceContainerHighest mismatch',
      );
      expect(
        colorScheme.onSurfaceVariant,
        mosaicColors.onSurfaceVariant,
        reason: 'onSurfaceVariant mismatch',
      );

      expect(
        colorScheme.outline,
        mosaicColors.outline,
        reason: 'outline mismatch',
      );
      expect(
        colorScheme.outlineVariant,
        mosaicColors.outlineVariant,
        reason: 'outlineVariant mismatch',
      );

      expect(
        colorScheme.inverseSurface,
        mosaicColors.inverseSurface,
        reason: 'inverseSurface mismatch',
      );
      expect(
        colorScheme.onInverseSurface,
        mosaicColors.onInverseSurface,
        reason: 'onInverseSurface mismatch',
      );
      expect(
        colorScheme.inversePrimary,
        mosaicColors.inversePrimary,
        reason: 'inversePrimary mismatch',
      );
      expect(
        colorScheme.surfaceTint,
        mosaicColors.surfaceTint,
        reason: 'surfaceTint mismatch',
      );
    });

    test('Dark Theme ColorScheme matches MosaicColors', () {
      final theme = MosaicThemeData.darkTheme;
      final mosaicColors = theme.extension<MosaicColors>()!;
      final colorScheme = theme.colorScheme;

      // Verify a subset of keys for dark mode (logic is same as light)
      expect(colorScheme.primary, mosaicColors.primary);
      expect(colorScheme.surface, mosaicColors.surface);
      expect(colorScheme.error, mosaicColors.error);
    });
  });
}
