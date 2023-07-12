import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int weight;
  final int height;
  double _bmi = 0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than Normal Body Weight. Try to exercise more!';
    else if (_bmi > 18.5)
      return 'You have a Normal Body Weight. Good Job!';
    else
      return 'You have a lower than Normal Body Weight. You can eat more!';
  }
}
