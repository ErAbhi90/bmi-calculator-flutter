import 'package:bmi_calculator/common/app_dimens.dart';
import 'package:bmi_calculator/common/app_styles.dart';
import 'package:flutter/material.dart';

class CardIconContent extends StatelessWidget {
  CardIconContent({@required this.cardIcon, @required this.cardLabel});

  final IconData cardIcon;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: card_icon_size,
        ),
        SizedBox(
          height: card_sized_box_height,
        ),
        Text(
          cardLabel,
          style: labelTextStyle,
        )
      ],
    );
  }
}
