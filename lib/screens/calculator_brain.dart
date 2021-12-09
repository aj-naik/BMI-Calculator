import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 40) {
      return 'Very Serverly Obese';
    } else if (_bmi > 34.9 && _bmi <= 40) {
      return 'Severely Obese';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'Obese';
    } else if (_bmi > 25.0 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi <= 25.0) {
      return 'Normal';
    } else if (_bmi > 16.0 && _bmi <= 18.5) {
      return 'Underweight';
    } else if (_bmi >= 15.0 && _bmi <= 16.0) {
      return 'Severely Underweight';
    } else {
      return 'Very Severely Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 40) {
      return 'You are Very Serverly Obese. Contact your doctor for medical opinion and suggestions to bring BMI to healthy';
    } else if (_bmi > 34.9 && _bmi <= 40) {
      return 'You are Severely Obsese. You need a lot of Diet changes and strong exercise routine.';
    } else if (_bmi >= 30.0 && _bmi <= 34.9) {
      return 'You are Obese. Try diet changes and exercising a lot to get BMI to Normal';
    } else if (_bmi > 25.0 && _bmi <= 29.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5 && _bmi <= 25.0) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi > 16.0 && _bmi <= 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi >= 15.0 && _bmi <= 16.0) {
      return 'You are Severely Underweight. You need to eat and exercise more to get into healthy range';
    } else {
      return 'Very Severely Underweight. Contact your doctor for medical opinion and suggestions to bring BMI to healthy';
    }
  }
}
