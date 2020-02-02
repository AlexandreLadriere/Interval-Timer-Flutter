import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interval_timer/strings_localization.dart';
import 'home.dart';

void main() => runApp(IntervalTimer());

class IntervalTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
      },
      localizationsDelegates: [const StringsLocalizationsDelegate()],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('fr_', 'FR'),
        const Locale('fr', 'FR')
      ],
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
          )
        )
      ),
    );
  }
}

