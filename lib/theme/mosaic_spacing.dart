import 'dart:ui';
import 'package:flutter/material.dart';

/// Mosaic Design System Spacing
///
/// Implements ThemeExtension for consistent access via context.
class MosaicSpacing extends ThemeExtension<MosaicSpacing> {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  const MosaicSpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  @override
  MosaicSpacing copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return MosaicSpacing(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  MosaicSpacing lerp(ThemeExtension<MosaicSpacing>? other, double t) {
    if (other is! MosaicSpacing) {
      return this;
    }
    return MosaicSpacing(
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
    );
  }

  /// Default Spacing Values
  static const MosaicSpacing regular = MosaicSpacing(
    xs: 4,
    sm: 8,
    md: 12,
    lg: 16,
    xl: 20,
  );
}
