import 'dart:math';

class CalculatorBrain {
  int? height;
  int? weight;
  double? _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) return "";
    if (_bmi! >= 25) {
      return "Overweight";
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi == null) return "";
    if (_bmi! >= 25) {
      return "You have a higher bmi, please exercise more!";
    } else if (_bmi! > 18.5) {
      return "You have a normal BMI! Good Job!";
    } else {
      return "You have a low BMI! Please eat more!";
    }
  }
}
