import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/mosaic_design_system.dart';
import 'gallery_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MosaicThemeProvider(),
      child: Consumer<MosaicThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Mosaic Design System Gallery',
            theme: MosaicThemeData.lightTheme,
            darkTheme: MosaicThemeData.darkTheme,
            themeMode: themeProvider.themeMode,
            home: const GalleryPage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
