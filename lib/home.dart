

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interval_timer/custom_colors.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            StringsLocalizations.of(context).getText("sets") ?? "Error",
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
                color: CustomColors.greenEnd,
              ),
              SizedBox(width: 40.0),
              Text(
                '00:00',
                style: Theme.of(context).textTheme.subtitle,
              ),
              SizedBox(width: 40.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: CustomColors.greenEnd,
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Text(
            StringsLocalizations.of(context).getText("work_interval") ?? "Error",
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
                color: CustomColors.greenEnd,
              ),
              SizedBox(width: 40.0),
              Text(
                '00:00',
                style: Theme.of(context).textTheme.subtitle,
              ),
              SizedBox(width: 40.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: CustomColors.greenEnd,
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Text(
            StringsLocalizations.of(context).getText("rest_interval") ?? "Error",
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
                color: CustomColors.greenEnd,
              ),
              SizedBox(width: 40.0),
              Text(
                '00:00',
                style: Theme.of(context).textTheme.subtitle,
              ),
              SizedBox(width: 40.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: CustomColors.greenEnd,
              ),
            ],
          ),
          SizedBox(height: 60.0),
          RaisedButton(
            onPressed: () {},
            color: CustomColors.greenEnd,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
                side: BorderSide(
                    color: CustomColors.greenEnd
                )
            ),
            child: Text(
              StringsLocalizations.of(context).getText("start") ?? "Error",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
