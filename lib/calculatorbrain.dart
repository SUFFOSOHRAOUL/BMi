import 'package:flutter/cupertino.dart';

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  String BMIcalculation() {
    double _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweighted';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweighted';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body mass index is way pass normal you need to work on your diet';
    } else if (_bmi > 18.5) {
      return 'perfect bomdy mass index keep up';
    } else {
      return 'your body mass in dex is less than average you need to improve on your dieting';
    }
  }
}
