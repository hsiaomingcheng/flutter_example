import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); //height的2次方
    return _bmi.toStringAsFixed(1);
    //因為回傳的為String 但是BMI是double
    //所以使用toStringAsFixed，可以指定小數點第幾位，並轉成string
  }

  String getResult() {
    if (_bmi >= 25) {
      return '超重了喔！';
    } else if (_bmi > 18.5) {
      return '正常！';
    } else {
      return '太輕了拉！';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '你的體重已經過重了喔！ 應該要多運動！';
    } else if (_bmi > 18.5) {
      return '你的體重正常！ 繼續保持';
    } else {
      return '你的體重太輕了拉！ 多吃一點';
    }
  }
}
