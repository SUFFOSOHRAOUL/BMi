import 'package:flutter/rendering.dart';
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
  int HEIGHT = 180; 
  int weight = 60;
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('HEIGHT',
                        style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                          Text(
                            HEIGHT.toString(),
                          style: kWeightlabelStyle
                          ),
                          Text('cm',
                          style: kLabelTextStyle,),
                          ]
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xfffffffff),
                      inactiveTrackColor:  Color(0xff8e8e98),
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x15eb1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:RoundSliderOverlayShape(overlayRadius:30.0 ),
                    ),
                    child: Slider(
                      value: HEIGHT.toDouble(),
                      min: 120.0,
                      max: 220.0,
                     onChanged: (double newHeight){
                    setState(() {
                      HEIGHT = newHeight.round();
                    });
                    
                     }
                     
                     ),
                  )
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style:kLabelTextStyle,
                        ),
                        Text(weight.toString(),
                        style: kWeightlabelStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon:FontAwesomeIcons.minus),
                            SizedBox(width:10.0),
                           RoundIconButton(icon:FontAwesomeIcons.plus),
                           
                          
                          ],
                        )
                      ]
                    ),
                      
                    ),
                  ),
                  Expanded(
            
                  child:  ReuseableCard(
                    colour: kCardcolor,
                     cardChild: Column()),
                  
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
  
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon});
   
    IconData? icon;

  @override
  Widget build(BuildContext context) {
   
    return RawMaterialButton(
      onPressed: (){
         
      },
      elevation: 6.0,
       constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),


      
    );
  }
}
