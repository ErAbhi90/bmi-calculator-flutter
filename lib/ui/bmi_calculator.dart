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
Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? kReusableCardActiveColor
                      : kReusableCardInactiveColor,
                  cardChild: CardIconContent(
                    cardIcon: FontAwesomeIcons.mars,
                    cardLabel: kTextMale,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? kReusableCardActiveColor
                      : kReusableCardInactiveColor,
                  cardChild: CardIconContent(
                    cardIcon: FontAwesomeIcons.venus,
                    cardLabel: kTextFemale,
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
