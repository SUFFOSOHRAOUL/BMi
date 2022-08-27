import 'package:bmi_calculatorr/components/buttombutton.dart';
import 'package:bmi_calculatorr/screen/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../components/constants.dart';
import '../components/reuseable_card.dart';

class resultpage extends StatelessWidget {
  const resultpage(
      {required this.BMIresults,
      required this.resultText,
      required this.resultInterpretation});
  final String BMIresults;
  final String resultText;
  final String resultInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Results',
                  style: kTitleTextstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kCardcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kRemarktextstyle,
                    ),
                    Text(
                      BMIresults,
                      style: kBmiTextstyle,
                    ),
                    Text(
                      resultInterpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            bottomButton(
                label: 'RE-CALCULATE',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => input_page()));
                })
          ],
        ));
  }
}
