import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 200.0,
                  width: 170.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 200.0,
                  width: 170.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(15.0),
            height: 200.0,
            width: 170.0,
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 200.0,
                  width: 170.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 200.0,
                  width: 170.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
