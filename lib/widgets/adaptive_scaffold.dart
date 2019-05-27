import 'dart:io';

import 'package:bmi_calculator/ui/bmi_calculator.dart';
import 'package:bmi_calculator/widgets/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatefulWidget {
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
          child: BMICalculator(),
        ),
      );
    } else {
      return MaterialApp(
        theme: getAndroidTheme(),
        home: Scaffold(
          body: BMICalculator(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      );
    }
  }
}
