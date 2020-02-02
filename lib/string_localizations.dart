import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class StringLocalizations {
  static StringLocalizations of(BuildContext context) {
    return Localizations.of<StringLocalizations>(context, StringLocalizations);
  }

  String getText(String key) => language[key];
}

Map<String, dynamic> language;

class StringLocalizationsDelegate extends LocalizationsDelegate<StringLocalizations> {
  const StringLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'fr'].contains(locale.languageCode);

  @override
  Future<StringLocalizations> load(Locale locale) async {
    String string = await rootBundle.loadString('assets/strings/${locale.languageCode}.json');
    language = json.decode(string);
    return SynchronousFuture<StringLocalizations>(StringLocalizations());
  }

  @override
  bool shouldReload(LocalizationsDelegate<StringLocalizations> old) => false;
}