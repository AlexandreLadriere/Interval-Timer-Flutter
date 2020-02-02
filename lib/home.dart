

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interval_timer/strings_localization.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            StringsLocalizations.of(context).getText("sets") ?? "Error",
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}
