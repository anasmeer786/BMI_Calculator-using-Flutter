import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({required this.weight,required this.height});
  final int height;
  final int weight;
  double _bmi=0;
  String calulateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Over Weight';
    }else if(_bmi >18.5){
      return 'Normal';
    }else{
      return 'Under Weight';
    }
  }
  String getInterpetation(){
    if(_bmi>=25){
      return 'You have a heighr than normal body weight. Try to exercise more.';
    }else if(_bmi >18.5){
      return 'Your have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normal boy weight. You can eat a bit more.';
    }
  }
}