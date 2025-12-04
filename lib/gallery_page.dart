import 'package:flutter/material.dart';
import 'package:theme/theme/mosaic_design_system.dart';
import 'gallery/colors_page.dart';
import 'gallery/typography_page.dart';
import 'gallery/widgets_page.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int _selectedIndex = 0;

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
        return const ColorsPage();
      case 1:
        return const TypographyPage();
      case 2:
        return const WidgetsPage();
      default:
        return const SizedBox.shrink();
    }
  }
}
