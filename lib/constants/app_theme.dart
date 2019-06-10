import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData _androidTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: KScaffoldBackgroundColor,
  textTheme: TextTheme(
    body1: TextStyle(
      color: kTextColor,
    ),
  ),
);

final CupertinoThemeData _iosTheme = CupertinoThemeData(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: KScaffoldBackgroundColor,
  barBackgroundColor: kAccentColor,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(
      color: kTextColor,
    ),
  ),
);

CupertinoThemeData getIOSTheme() {
  return _iosTheme;
}

ThemeData getAndroidTheme() {
  return _androidTheme;
}
