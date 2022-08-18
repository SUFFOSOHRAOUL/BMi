import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';


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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              colour: selectedGender == Gender.male ? kCardcolor:kInactiveCardColor,
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
                    colour: selectedGender == Gender.female ? kCardcolor:kInactiveCardColor, 
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
            
                  child: ReuseableCard(colour: kCardcolor , cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text('HEIGHT',
                        style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                          Text('180',
                          style: kWeightlabelStyle
                          ),
                          Text('cm',
                          style: kLabelTextStyle,),
                          ]
                  ),
                  
                ] 
                  ),
                  ),
              ),
                ]
              ),
            ),
          
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(
                    colour: kCardcolor, 
                    cardChild: Column(),
                      
                    ),
                  ),
                  Expanded(
            
                  child:  ReuseableCard(colour: kCardcolor, cardChild: Column()),
                  
              ),
                ]
                
              ),
              
            ),
            Container(
                  margin: EdgeInsets.only(top: 10),
                  color: kBottomContainerColor ,
                  width: double.infinity,
                  height: kBottomContainerHeight,
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
  
