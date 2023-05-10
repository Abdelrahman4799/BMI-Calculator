import 'dart:math';
import 'package:flutter/material.dart';

class CalculateBMI {
  int height;
  int weight;
  CalculateBMI({required this.height, required this.weight});
  double? bmi;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi! >= 25) {
      return 'Overweight';
    } else if (bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String message() {
    if (bmi! >= 25) {
      return 'You have a higher than normal body weight.\n It is recommended that you lose weight';
    } else if (bmi! > 18.5) {
      return 'You have a normal body weight.Congratulations';
    } else {
      return 'You are underweight \nIt is recommended that you lose weight';
    }
  }
}
