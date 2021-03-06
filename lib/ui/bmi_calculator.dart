import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_dimens.dart';
import 'package:bmi_calculator/constants/app_strings.dart';
import 'package:bmi_calculator/constants/app_styles.dart';
import 'package:bmi_calculator/constants/app_theme.dart';
import 'package:bmi_calculator/model/calculator_functionality.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/card_icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_results.dart';

enum Gender { male, female }

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                SizedBox(
                  height: 5.0,
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
                  ],
                ),
                SliderTheme(
                  data: getSliderTheme(context),
                  child: Slider(
                    value: height.toDouble(),
                    min: kSliderMinValue,
                    max: kSliderMaxValue,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          height = newValue.round();
                        },
                      );
                    },
                  ),
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
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kBigLabelTextStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(
                                () {
                                  weight--;
                                },
                              );
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(
                                () {
                                  weight++;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: kReusableCardActiveColor,
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kBigLabelTextStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        BottomButton(
          onTap: () {
            CalculatorFunctionality calc = CalculatorFunctionality(
              height: height,
              weight: weight,
            );

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BmiResults(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      resultInterpretation: calc.getInterpretation(),
                    ),
              ),
            );
          },
          buttonTitle: 'CALCULATE',
        ),
      ],
    );
  }
}
