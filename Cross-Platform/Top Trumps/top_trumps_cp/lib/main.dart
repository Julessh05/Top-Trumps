library toptrumps;

import 'package:flutter/material.dart';
import 'package:modern_themes/modern_themes.dart' show Themes;
import 'package:string_translate/string_translate.dart'
    show Translation, TranslationLocales;
import 'package:top_trumps_cp/data/translations.dart';

void main() {
  runApp(const TopTrumpsApp());
}

class TopTrumpsApp extends StatefulWidget {
  const TopTrumpsApp({super.key});

  @override
  State<StatefulWidget> createState() => _TopTrumpsAppState();
}

final class _TopTrumpsAppState extends State<TopTrumpsApp> {
  @override
  void initState() {
    Translation.init(
      supportedLocales: TranslationLocales.all,
      defaultLocale: TranslationLocales.english,
      translations: translations,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Top Trumps Cross Platform",

      // Routes
      initialRoute: '/',
      routes: {},
      
      // Theme
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      highContrastTheme: Themes.highContrastLightTheme,
      highContrastDarkTheme: Themes.highContrastDarkTheme,
      themeMode: Themes.themeMode,
    );
  }
}
