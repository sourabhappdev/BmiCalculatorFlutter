
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';


class Results extends StatelessWidget {

  Results({required this.bmiResult,required this.interpretation});

  final String bmiResult;
  final String interpretation;


  String compare(String bmi){

    double b= double.parse(bmi);

    if(b>=25){
      return 'OVERWEIGHT';
    }else if(b>18.5){

      return 'NORMAL';

    }else{
      return 'UNDERWEIGHT';
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusabelCard(
              colour: KActivecardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    compare(bmiResult),
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: KBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: "RE-CALCULATE", onTap:
              () {
           Navigator.pop(context);
          },
          ),
        ],
      ),
    );
  }
}
