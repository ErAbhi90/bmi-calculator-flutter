import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';

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

SliderThemeData getSliderTheme(BuildContext context) {
  return SliderTheme.of(context).copyWith(
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: kSliderEnabledThumbRadius,
    ),
    overlayShape: RoundSliderOverlayShape(
      overlayRadius: kSliderOverlayRadius,
    ),
    thumbColor: kSliderActiveColor,
    activeTrackColor: kSliderTrackColor,
    inactiveTrackColor: kSliderInactiveTrackColor,
    overlayColor: kSliderOverlayColor,
  );
}

CupertinoThemeData getIOSTheme() {
  return _iosTheme;
}

ThemeData getAndroidTheme() {
  return _androidTheme;
}
