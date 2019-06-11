import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_dimens.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      elevation: kRoundIconButtonElevation,
      shape: CircleBorder(),
      fillColor: kRoundButtonBgColor,
      constraints: BoxConstraints.tightFor(
        width: kRoundIconButtonConstraints,
        height: kRoundIconButtonConstraints,
      ),
    );
  }
}
