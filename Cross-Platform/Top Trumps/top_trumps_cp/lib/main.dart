library toptrumps;

import 'package:bloc_implementation/bloc_implementation.dart';
import 'package:flutter/material.dart';
import 'package:modern_themes/modern_themes.dart' show Themes;
import 'package:string_translate/string_translate.dart'
    show Translation, TranslationLocales, TranslationDelegates;
import 'package:top_trumps_cp/blocs/add_deck_bloc.dart';
import 'package:top_trumps_cp/blocs/home_bloc.dart';
import 'package:top_trumps_cp/data/translations.dart';
import 'package:top_trumps_cp/router/routes.dart';
import 'package:top_trumps_cp/router/widget_router.dart';
import 'package:top_trumps_cp/views/shared/error_view.dart';

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
      // General
      title: "Top Trumps Cross Platform",

      // Debug
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      // Change for screenshot
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,

      // Routes
      initialRoute: Routes.home,
      routes: {
        Routes.home: (_) => BlocParent(
              bloc: HomeBloc(),
              child: WidgetRouter.home(),
            ),
        Routes.addDeck: (_) => BlocParent(
              bloc: AddDeckBloc(),
              child: WidgetRouter.addDeck(),
            ),
      },
      onUnknownRoute: (_) =>
          MaterialPageRoute(builder: (_) => const ErrorView()),

      // Theme
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      highContrastTheme: Themes.highContrastLightTheme,
      highContrastDarkTheme: Themes.highContrastDarkTheme,
      themeMode: Themes.themeMode,

      // Locales
      supportedLocales: Translation.supportedLocales,
      localizationsDelegates: TranslationDelegates.localizationDelegates,
      locale: Translation.activeLocale,
    );
  }
}
