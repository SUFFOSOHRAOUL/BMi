import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
const   bottomContainerHeight = 80.0;
const  cardcolor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

class inputPage extends StatelessWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: cardcolor ,
                  cardChild: topCardUI(icon: FontAwesomeIcons.mars, label: 'MALE'),
                 
                   ),
                  
              ),
              Expanded(
            
                  child:  ReuseableCard(colour: cardcolor, cardChild: topCardUI(icon: FontAwesomeIcons.venus, label: 'FEMALE')),
              ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: cardcolor , cardChild: Column()),
                  
              ),
                ]
              ),
            ),
          
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: cardcolor, cardChild: Column()),
                  
              ),
              
                  Expanded(
            
                  child:  ReuseableCard(colour: cardcolor, cardChild: Column()),
                  
              ),
                ]
                
              ),
              
            ),
            Container(
                  margin: EdgeInsets.only(top: 10),
                  color: bottomContainerColor ,
                  width: double.infinity,
                  height: bottomContainerHeight,
                ),
          ],
          
        ),
    
        
    );
    
  }
}

