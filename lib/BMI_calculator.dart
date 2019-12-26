import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  double _bmi;

  BMICalculator({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi >= 18) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getTip() {
    if (_bmi >= 25) {
      return "Ma bro, cut down on the fries please!";
    } else if (_bmi >= 18) {
      return "Enjoy life, you good!!";
    } else {
      return "Ma bro, you need some more milk!";
    }
  }
}
