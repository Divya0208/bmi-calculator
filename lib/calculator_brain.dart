import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain{

  final int height;
  final int weight;
  double bmi = 0;

  CalculatorBrain({ @required this.height, @required this.weight});

  String calculateBMI(){
    bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if( bmi >= 25.0 ){
      return 'OVERWEIGHT';
    }else if( bmi > 18.5 ){ 
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if( bmi >= 25.0 ){
      return 'You have higher than normal body weight. Try to exercise more.';
    }else if( bmi > 18.5 ){
      return 'You have normal body weight. Good job!';
    }else{
      return 'You have lower than normal body weight. Try to eat more.';
    }
  }

}