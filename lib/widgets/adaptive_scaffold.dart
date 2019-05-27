import 'dart:io';

import 'package:bmi_calculator/ui/bmi_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          child: BMICalculator(),
        ),
      );
    } else {
      return MaterialApp(
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
