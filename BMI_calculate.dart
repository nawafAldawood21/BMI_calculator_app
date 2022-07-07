import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculate{
  BMICalculate({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else
      return 'Underweight';
  }
  String getFeedback(){
    if(_bmi>=25){
      return 'You have are higher body than the normal body, you have to eat less';
    }
    else if(_bmi>18.5){
      return 'You have a normal body, try to keep your body fit!';
    }
    else
      return 'You have a lower body than the normal body, you have to eat more ';
  }

}