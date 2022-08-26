import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class resultpage extends StatelessWidget {
  const resultpage({Key? key}) : super(key: key);

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
          children: [
            Expanded(
              child: Container(
                child: Text('Your Results', style: kTitleTextstyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kCardcolor,
              ),
            )
          ],
        ));
  }
}
