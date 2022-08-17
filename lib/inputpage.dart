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
gender female = gender(GenderType.female);
gender male = gender(GenderType.male);
class input_page extends StatefulWidget {
  



  @override
  State<input_page> createState() => _input_pageState();
}

class _input_pageState extends State<input_page> {
  @override
  
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCard( gender sex){
    if(sex == male){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = cardcolor;
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }

      if(sex == female){
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = cardcolor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }
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
            child:  GestureDetector(
                  onTap: (){
                     setState((){
                      updateCard(male);
                      
                     });
                    },
                    
                    child: ReuseableCard(colour: maleCardColor ,
                    cardChild: topCardUI(icon: FontAwesomeIcons.mars, label: 'MALE'),
                                   
                     ),
            )
                  
              ),
              Expanded(
            
                  child:  GestureDetector(
                    onTap: (){
                     setState((){
                      updateCard(female);
                      
                     });
                    },
                  child: ReuseableCard(colour: femaleCardColor, 
                  cardChild: topCardUI(icon: FontAwesomeIcons.venus, label: 'FEMALE')
                  )
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


    
  class gender{
    GenderType sex;
    gender(this.sex);
  }
  enum GenderType{
     male,
    female,
  }
  
