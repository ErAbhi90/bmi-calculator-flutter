import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ThemeData _androidTheme = ThemeData(
  primaryColor: Color(0xFF0A0E21),
  scaffoldBackgroundColor: Color(0xFF0A0E21),
  accentColor: Colors.teal,
  textTheme: TextTheme(
    body1: TextStyle(
      color: Colors.white,
    ),
  ),
);

final CupertinoThemeData _iosTheme = CupertinoThemeData(
  primaryColor: Color(0xFF0A0E21),
  scaffoldBackgroundColor: Color(0xFF0A0E21),
  barBackgroundColor: Colors.teal,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      color: Colors.white,
    ),
  ),
);

CupertinoThemeData getIOSTheme() {
  return _iosTheme;
}

ThemeData getAndroidTheme() {
  return _androidTheme;
}
