import 'package:flutter/material.dart';
import 'package:theme/theme/mosaic_design_system.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int _selectedIndex = 0;
  bool _isSwitchOn = false;
  bool _isCheckboxChecked = false;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.brandHeadlineText('Mosaic Gallery'),
        actions: [
          IconButton(
            icon: Icon(
              context.isDarkTheme ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: context.themeProvider.toggleTheme,
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.palette_outlined),
                selectedIcon: Icon(Icons.palette),
                label: Text('Colors'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.text_fields),
                selectedIcon: Icon(Icons.text_fields),
                label: Text('Type'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.widgets_outlined),
                selectedIcon: Icon(Icons.widgets),
                label: Text('Widgets'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(context.mosaicSpacing.lg),
              child: _buildSelectedContent(context),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSelectedContent(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return _buildColorsContent(context);
      case 1:
        return _buildTypographyContent(context);
      case 2:
        return _buildWidgetsContent(context);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildColorsContent(BuildContext context) {
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

  Widget _buildTypographyContent(BuildContext context) {
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

  Widget _buildWidgetsContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.headlineText('Buttons'),
        context.verticalSpaceMD,
        Wrap(
          spacing: context.mosaicSpacing.md,
          runSpacing: context.mosaicSpacing.md,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.tonal(onPressed: () {}, child: const Text('Tonal')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            TextButton(onPressed: () {}, child: const Text('Text')),
          ],
        ),
        context.verticalSpaceXL,
        context.headlineText('Inputs'),
        context.verticalSpaceMD,
        const TextField(
          decoration: InputDecoration(
            labelText: 'Outlined Text Field',
            hintText: 'Enter some text',
            prefixIcon: Icon(Icons.text_fields),
          ),
        ),
        context.verticalSpaceMD,
        const TextField(
          decoration: InputDecoration(
            labelText: 'Filled Text Field',
            hintText: 'Enter some text',
            filled: true,
            prefixIcon: Icon(Icons.edit),
          ),
        ),
        context.verticalSpaceMD,
        const TextField(
          decoration: InputDecoration(
            labelText: 'Error State',
            errorText: 'This field has an error',
            prefixIcon: Icon(Icons.error),
          ),
        ),
        context.verticalSpaceXL,
        context.headlineText('Selection Controls'),
        context.verticalSpaceMD,
        Row(
          children: [
            Switch(
              value: _isSwitchOn,
              onChanged: (v) => setState(() => _isSwitchOn = v),
            ),
            context.horizontalSpaceMD,
            Checkbox(
              value: _isCheckboxChecked,
              onChanged: (v) => setState(() => _isCheckboxChecked = v!),
            ),
            context.horizontalSpaceMD,
            Radio(value: true, groupValue: true, onChanged: (_) {}),
            Radio(value: false, groupValue: true, onChanged: (_) {}),
          ],
        ),
        context.verticalSpaceMD,
        Slider(
          value: _sliderValue,
          onChanged: (v) => setState(() => _sliderValue = v),
        ),
        context.verticalSpaceXL,
        context.headlineText('Cards'),
        context.verticalSpaceMD,
        Card(
          child: Padding(
            padding: EdgeInsets.all(context.mosaicSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.titleText('Elevated Card'),
                context.verticalSpaceSM,
                const Text(
                  'This is a standard elevated card using Material 3 elevation and rounded corners.',
                ),
              ],
            ),
          ),
        ),
        context.verticalSpaceMD,
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: context.mosaicColors.outline),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(context.mosaicSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.titleText('Outlined Card'),
                context.verticalSpaceSM,
                const Text('This is an outlined card with no elevation.'),
              ],
            ),
          ),
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
