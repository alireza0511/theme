import 'package:flutter/material.dart';
import 'package:theme/theme/mosaic_design_system.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.headlineText('Brand Colors'),
        context.verticalSpaceMD,
        Wrap(
          spacing: context.mosaicSpacing.md,
          runSpacing: context.mosaicSpacing.md,
          children: [
            _ColorCard(
              'Huntington Green',
              context.mosaicColors.huntingtonGreen,
            ),
            _ColorCard('Huntington Blue', context.mosaicColors.huntingtonBlue),
          ],
        ),
        context.verticalSpaceXL,
        context.headlineText('Material Colors'),
        context.verticalSpaceMD,
        Wrap(
          spacing: context.mosaicSpacing.md,
          runSpacing: context.mosaicSpacing.md,
          children: [
            _ColorCard('Primary', context.mosaicColors.primary),
            _ColorCard('On Primary', context.mosaicColors.onPrimary),
            _ColorCard(
              'Primary Container',
              context.mosaicColors.primaryContainer,
            ),
            _ColorCard('Secondary', context.mosaicColors.secondary),
            _ColorCard('Tertiary', context.mosaicColors.tertiary),
            _ColorCard('Error', context.mosaicColors.error),
            _ColorCard('Surface', context.mosaicColors.surface),
            _ColorCard('Outline', context.mosaicColors.outline),
          ],
        ),
      ],
    );
  }
}

class _ColorCard extends StatelessWidget {
  final String name;
  final Color color;

  const _ColorCard(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(context.mosaicSpacing.sm),
      decoration: BoxDecoration(
        color: context.mosaicColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: context.mosaicColors.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: context.mosaicColors.outline.withOpacity(0.1),
              ),
            ),
          ),
          context.verticalSpaceSM,
          Text(name, style: context.mosaicTypography.labelMedium),
          Text(
            '#${color.value.toRadixString(16).substring(2).toUpperCase()}',
            style: context.mosaicTypography.bodySmall?.copyWith(
              color: context.mosaicColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
