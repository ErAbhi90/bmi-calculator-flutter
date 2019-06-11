import 'dart:io';

import 'package:bmi_calculator/constants/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatefulWidget {
  AdaptiveScaffold({this.child});

  final Widget child;

  @override
  _AdaptiveScaffoldState createState() => _AdaptiveScaffoldState();
}

class _AdaptiveScaffoldState extends State<AdaptiveScaffold> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        theme: getIOSTheme(),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            heroTag: Text(
              "BMI Calculator",
            ),
          ),
          child: widget.child,
        ),
      );
    } else {
      return MaterialApp(
        theme: getAndroidTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('BMI Calculator'),
          ),
          body: widget.child,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      );
    }
  }
}
