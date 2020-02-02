import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StringsLocalizations {
  static StringsLocalizations of(BuildContext context) {
    return Localizations.of<StringsLocalizations>(context, StringsLocalizations);
  }

  String getText(String key) => language[key];
}

Map<String, dynamic> language;

class StringsLocalizationsDelegate extends LocalizationsDelegate<StringsLocalizations> {
  const StringsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'fr'].contains(locale.languageCode);

  @override
  Future<StringsLocalizations> load(Locale locale) async {
    String string = await rootBundle.loadString(
        "assets/strings/${locale.languageCode}.json");
    language = json.decode(string);
    return SynchronousFuture<StringsLocalizations>(StringsLocalizations());
  }

  @override
  bool shouldReload(StringsLocalizationsDelegate old) => false;
}