import 'dart:math';

class CalculatingBmi {
  CalculatingBmi({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height /100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult (){

    if(_bmi >= 30) {
      return 'Obese';
    } else if(_bmi <= 29.9 && _bmi >= 25.0){
      return 'Overweight';
    } else if(_bmi <= 24.9 && _bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 30) {
      return ' You are Obese, you need to do something about it you fat pice of shit';
    } else if(_bmi <= 29.9 && _bmi >= 25.0){
      return 'you are Overweight, go and try to exercise more';
    } else if(_bmi <= 24.9 && _bmi >= 18.5) {
      return 'you hve normal body weight. Good job my man';
    } else {
      return 'you are under normal norms go and eat junk food just go nuts';
    }
  }
}