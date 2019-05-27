import 'package:bmi_calculator/common/app_colors.dart';
import 'package:bmi_calculator/common/app_dimens.dart';
import 'package:bmi_calculator/common/app_strings.dart';
import 'package:bmi_calculator/widgets/card_icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color maleCardColor = reusable_card_inactive_color;
  Color femaleCardColor = reusable_card_inactive_color;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == reusable_card_inactive_color) {
        maleCardColor = reusable_card_active_color;
        femaleCardColor = reusable_card_inactive_color;
      } else {
        maleCardColor = reusable_card_inactive_color;
      }
    }

    if (gender == 2) {
      if (femaleCardColor == reusable_card_inactive_color) {
        femaleCardColor = reusable_card_active_color;
        maleCardColor = reusable_card_inactive_color;
      } else {
        femaleCardColor = reusable_card_inactive_color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    cardColor: reusable_card_inactive_color,
                    cardChild: CardIconContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardLabel: text_reusable_card_male,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    cardColor: reusable_card_inactive_color,
                    cardChild: CardIconContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardLabel: text_reusable_card_female,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            cardColor: reusable_card_active_color,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardColor: reusable_card_active_color,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: reusable_card_active_color,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: bottom_container_color,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottom_container_height,
        ),
      ],
    );
  }
}
