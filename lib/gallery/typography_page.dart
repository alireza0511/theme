import 'package:flutter/material.dart';
import 'package:theme/theme/mosaic_design_system.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.headlineText('Brand Typography'),
        context.verticalSpaceMD,
        context.brandDisplayText('Brand Display'),
        context.verticalSpaceSM,
        context.brandHeadlineText('Brand Headline'),
        context.verticalSpaceSM,
        Text('Brand Title', style: context.mosaicTypography.brandTitle),
        context.verticalSpaceSM,
        Text('Brand Body', style: context.mosaicTypography.brandBody),
        context.verticalSpaceXL,
        const Divider(),
        context.verticalSpaceXL,
        context.headlineText('Material Typography'),
        context.verticalSpaceMD,
        Text('Display Large', style: context.mosaicTypography.displayLarge),
        Text('Display Medium', style: context.mosaicTypography.displayMedium),
        Text('Display Small', style: context.mosaicTypography.displaySmall),
        context.verticalSpaceMD,
        Text('Headline Large', style: context.mosaicTypography.headlineLarge),
        Text('Headline Medium', style: context.mosaicTypography.headlineMedium),
        Text('Headline Small', style: context.mosaicTypography.headlineSmall),
        context.verticalSpaceMD,
        Text('Title Large', style: context.mosaicTypography.titleLarge),
        Text('Title Medium', style: context.mosaicTypography.titleMedium),
        Text('Title Small', style: context.mosaicTypography.titleSmall),
        context.verticalSpaceMD,
        Text('Body Large', style: context.mosaicTypography.bodyLarge),
        Text('Body Medium', style: context.mosaicTypography.bodyMedium),
        Text('Body Small', style: context.mosaicTypography.bodySmall),
        context.verticalSpaceMD,
        Text('Label Large', style: context.mosaicTypography.labelLarge),
        Text('Label Medium', style: context.mosaicTypography.labelMedium),
        Text('Label Small', style: context.mosaicTypography.labelSmall),
      ],
    );
  }
}
