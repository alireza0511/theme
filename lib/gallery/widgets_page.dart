import 'package:flutter/material.dart';
import 'package:theme/theme/mosaic_design_system.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  bool _isSwitchOn = false;
  bool _isCheckboxChecked = false;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
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
