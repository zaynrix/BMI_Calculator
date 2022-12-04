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
 String getResult2() {
    if (_bmi > 40  ) {
      return 'Obese Class III	';
    } else if (_bmi > 35 &&_bmi < 40) {
      return 'Obese Class II';
    } else if (_bmi > 30 &&_bmi < 35) {
      return 'Obese Class I';
    } else if (_bmi > 25 &&_bmi < 30) {
      return 'Overweight';
    } else if (_bmi > 18.5 &&_bmi < 25) {
      return 'Normal';
    } else if (_bmi > 17 &&_bmi < 18.5) {
      return 'Mild Thinness';
    }else if (_bmi > 16 &&_bmi < 17) {
      return 'Mild Thinness';
    }else if (_bmi < 16) {
      return 'Severe Thinness';
    } else {
      return 'Underweight';
    }
  }
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try exercising more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!.';
    } else {
      return 'You have lower than normal body weight. You can eat bit more.';
    }
  }
}
