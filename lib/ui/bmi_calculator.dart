import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_dimens.dart';
import 'package:bmi_calculator/constants/app_strings.dart';
import 'package:bmi_calculator/constants/app_styles.dart';
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
  int height = 180;

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
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kBigLabelTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: kSliderMinValue,
                      max: kSliderMaxValue,
                      activeColor: kSliderActiveColor,
                      inactiveColor: kSliderInactiveColor,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
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
