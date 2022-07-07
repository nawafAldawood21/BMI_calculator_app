import 'package:flutter/material.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'input_page.dart';
import 'constants.dart';
import 'BMI_calculate.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult,this.textResult,this.feedback});
  final String bmiResult;
  final String textResult;
  final String feedback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
                'Your Results',
            style: kTitleTextStyle,),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textResult.toUpperCase(),
                style: kResultTextStyle,
                ),
                Text(
                  bmiResult,
                style: kBMITextStyle,
                ),
                Text(
                    feedback,
                textAlign: TextAlign.center,
                style: kBodyTextStyle,
                ),
              ],
            ),  
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>InputPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonStyle,
                ),
              ),
              color: kCalculateButtonColor,
              margin: EdgeInsets.only(top: 10),
              height: 80,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
