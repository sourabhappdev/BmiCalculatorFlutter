import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:developer';




class CalculatorBrain{

  CalculatorBrain({required this.weight,required this.height});

  final int height;
  final int weight;
  double _bmi=0;

  String bmiCalc(){
    double mheight = height/100;
    _bmi = weight / (mheight*mheight);
    return _bmi.toStringAsFixed(1);

  }


  String getInterpretation(){

    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi>18.5){

      return 'You have a normal body weight. Good Job.';

    }else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }

  }




}

