import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/mosaic_theme_data.dart';
import 'theme/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppThemeProvider(
        lightTheme: MosaicThemeData.lightTheme,
        darkTheme: MosaicThemeData.darkTheme,
      ),
      child: Consumer<AppThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Sample Design System Demo',
            theme: themeProvider.getLightMaterialTheme(),
            darkTheme: themeProvider.getDarkMaterialTheme(),
            themeMode: themeProvider.themeMode,
            home: const MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.brandHeadlineText(
          'Design System Demo',
          color: context.colors.huntingtonGreen,
        ),
        actions: [
          IconButton(
            icon: Icon(
              context.isDarkTheme ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: context.themeProvider.toggleTheme,
            tooltip: 'Toggle theme',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(context.spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero section
            Card(
              child: Padding(
                padding: EdgeInsets.all(context.spacing.cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.brandDisplayText(
                      'Sample Bank',
                      color: context.colors.huntingtonGreen,
                    ),
                    context.verticalSpaceSM,
                    context.brandHeadlineText(
                      'Design System',
                      color: context.colors.huntingtonBlue,
                    ),
                    context.verticalSpaceMD,
                    context.bodyText(
                      'A comprehensive Material 3 design system with complete API encapsulation and future-proof abstractions.',
                    ),
                  ],
                ),
              ),
            ),

            context.verticalSpaceXL,

            // Counter demo
            Card(
              child: Padding(
                padding: EdgeInsets.all(context.spacing.cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.titleText('Counter Demo', large: true),
                    context.verticalSpaceSM,
                    context.bodyText(
                      'You have pushed the button this many times:',
                    ),
                    context.verticalSpaceLG,
                    Center(
                      child: context.currencyText(
                        '$_counter',
                        large: true,
                        color: context.colors.huntingtonGreen,
                      ),
                    ),
                    context.verticalSpaceXL,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {
                            setState(() {
                              _counter = 0;
                            });
                          },
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reset'),
                        ),
                        ElevatedButton.icon(
                          onPressed: _incrementCounter,
                          icon: const Icon(Icons.add),
                          label: const Text('Increment'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            context.verticalSpaceXL,

            // Color showcase
            Card(
              child: Padding(
                padding: EdgeInsets.all(context.spacing.cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.titleText('Brand Colors', large: true),
                    context.verticalSpaceMD,
                    _buildColorRow(
                      'Sample Green',
                      context.colors.huntingtonGreen,
                    ),
                    context.verticalSpaceSM,
                    _buildColorRow(
                      'Sample Blue',
                      context.colors.huntingtonBlue,
                    ),
                    context.verticalSpaceSM,
                    _buildColorRow('Primary', context.colors.primary),
                    context.verticalSpaceSM,
                    _buildColorRow('Secondary', context.colors.secondary),
                    context.verticalSpaceSM,
                    _buildColorRow('Success', context.colors.success),
                    context.verticalSpaceSM,
                    _buildColorRow('Warning', context.colors.warning),
                    context.verticalSpaceSM,
                    _buildColorRow('Error', context.colors.error),
                  ],
                ),
              ),
            ),

            context.verticalSpaceXL,

            // Typography showcase
            Card(
              child: Padding(
                padding: EdgeInsets.all(context.spacing.cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.titleText('Typography Scale', large: true),
                    context.verticalSpaceMD,
                    context.displayText('Display Text', large: false),
                    context.verticalSpaceSM,
                    context.headlineText('Headline Text'),
                    context.verticalSpaceSM,
                    context.titleText('Title Text'),
                    context.verticalSpaceSM,
                    context.bodyText('Body text for reading content'),
                    context.verticalSpaceSM,
                    context.bodyText(
                      'Label text for UI elements',
                      large: false,
                    ),
                    context.verticalSpaceSM,
                    context.brandDisplayText('Brand Display'),
                    context.verticalSpaceSM,
                    context.brandHeadlineText('Brand Headline'),
                    context.verticalSpaceSM,
                    context.currencyText('Currency: \$1,234.56', large: true),
                  ],
                ),
              ),
            ),

            context.verticalSpaceXL,

            // Interactive elements
            Card(
              child: Padding(
                padding: EdgeInsets.all(context.spacing.cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.titleText('Interactive Elements', large: true),
                    context.verticalSpaceMD,

                    // Buttons
                    context.bodyText('Buttons:'),
                    context.verticalSpaceSM,
                    Wrap(
                      spacing: context.spacing.sm,
                      runSpacing: context.spacing.sm,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Primary'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text('Secondary'),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download),
                          label: const Text('With Icon'),
                        ),
                      ],
                    ),

                    context.verticalSpaceLG,
                    const Divider(),
                    context.verticalSpaceLG,

                    // Form elements
                    context.bodyText('Form elements:'),
                    context.verticalSpaceMD,
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email address',
                        helperText: 'We will never share your email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    context.verticalSpaceMD,
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),

            context.verticalSpaceXL,

            // Footer
            Center(
              child: Column(
                children: [
                  context.bodyText(
                    'Built with Material 3 Design System',
                    color: context.colors.textSecondary,
                    textAlign: TextAlign.center,
                  ),
                  context.verticalSpaceSM,
                  context.bodyText(
                    'Sample Bank © ${DateTime.now().year}',
                    color: context.colors.textTertiary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildColorRow(String name, dynamic color) {
    // Extract color value for display
    final colorValue = color is Color
        ? color.value
        : (color as dynamic)._materialValue;
    final displayColor = Color(colorValue);

    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: displayColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Color(
                context.colors.outline._materialValue,
              ).withOpacity(0.2),
            ),
          ),
        ),
        context.horizontalSpaceSM,
        Expanded(child: context.bodyText(name)),
        context.bodyText(
          '#${colorValue.toRadixString(16).substring(2).toUpperCase()}',
          color: context.colors.textSecondary,
        ),
      ],
    );
  }
}
