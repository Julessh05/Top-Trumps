library toptrumps.data;

import 'dart:ui' show Locale;

import 'package:string_translate/string_translate.dart';

Map<String, Map<Locale, String>> _translations = {
  "Welcome": {
    TranslationLocales.german: "Willkommen",
  },
};

Map<String, Map<Locale, String>> get translations {
  _translations.addAll(StandardTranslations.all);
  return _translations;
}
