import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText; 
  final String interpretation;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultMessageTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kTipTextStyle,
                    textAlign: TextAlign.center,
                  )
                ]
              ),
            ),
          ),
          BottomButton(
            text: 'RECALCULATE',
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
          ),
        ]
      ),
    );
  }
}