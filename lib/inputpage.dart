import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
const   bottomContainerHeight = 80.0;
Color  cardcolor = Color(0xff1d1e33);
Color inactiveCardColor = Color.fromARGB(255, 14, 16, 36);
const bottomContainerColor = Color(0xffeb1555);

class input_page extends StatefulWidget {
  


  @override
  State<input_page> createState() => _input_pageState();
}

class _input_pageState extends State<input_page> {
@override
  Gender? selectedGender;
   
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

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
            child:  ReuseableCard(
              onPressed:(){
                 setState((){
             
             selectedGender = Gender.male;
              
             });
              } ,
              colour: selectedGender == Gender.male ? cardcolor:inactiveCardColor,
            cardChild: topCardUI(icon: FontAwesomeIcons.mars, label: 'MALE'),
                           
             )
                  
              ),
              Expanded(
            
                  child:  ReuseableCard(
                    onPressed: (){
                        setState((){
                      // updateCard(Gender.female);
                      selectedGender = Gender.female;
                      
                     });
                    },
                    colour: selectedGender == Gender.female ? cardcolor:inactiveCardColor, 
                  cardChild: topCardUI(icon: FontAwesomeIcons.venus, label: 'FEMALE')
                  ),
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


  
  enum Gender{
     male,
    female,
  }
  
