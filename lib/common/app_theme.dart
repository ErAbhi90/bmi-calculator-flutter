import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData _androidTheme = ThemeData.dark().copyWith(
  primaryColor: app_primary_color,
  scaffoldBackgroundColor: app_scaffold_background_color,
  textTheme: TextTheme(
    body1: TextStyle(
      color: app_text_color,
    ),
  ),
);

final CupertinoThemeData _iosTheme = CupertinoThemeData(
  primaryColor: app_primary_color,
  scaffoldBackgroundColor: app_scaffold_background_color,
  barBackgroundColor: app_accent_color,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      color: app_text_color,
    ),
  ),
);

CupertinoThemeData getIOSTheme() {
  return _iosTheme;
}

ThemeData getAndroidTheme() {
  return _androidTheme;
}
