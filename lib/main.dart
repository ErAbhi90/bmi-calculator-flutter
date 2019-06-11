import 'package:bmi_calculator/ui/bmi_calculator.dart';
import 'package:bmi_calculator/widgets/adaptive_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      AdaptiveScaffold(
        child: BMICalculator(),
      ),
    );
