import 'package:bmi_calculator/common/app_colors.dart';
import 'package:bmi_calculator/common/app_dimens.dart';
import 'package:bmi_calculator/common/app_strings.dart';
import 'package:bmi_calculator/widgets/card_icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color maleCardColor = kReusableCardInactiveColor;
  Color femaleCardColor = kReusableCardInactiveColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == kReusableCardInactiveColor) {
        maleCardColor = kReusableCardActiveColor;
        femaleCardColor = kReusableCardInactiveColor;
      } else {
        maleCardColor = kReusableCardInactiveColor;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColor == kReusableCardInactiveColor) {
        femaleCardColor = kReusableCardActiveColor;
        maleCardColor = kReusableCardInactiveColor;
      } else {
        femaleCardColor = kReusableCardInactiveColor;
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
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    cardColor: kReusableCardInactiveColor,
                    cardChild: CardIconContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardLabel: kTextMale,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    cardColor: kReusableCardInactiveColor,
                    cardChild: CardIconContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardLabel: kTextFemale,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            cardColor: kReusableCardActiveColor,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardColor: kReusableCardActiveColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: kReusableCardActiveColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
        ),
      ],
    );
  }
}
