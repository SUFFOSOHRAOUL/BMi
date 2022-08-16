import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class topCardUI extends StatelessWidget {
  topCardUI({required this.icon,required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
          Icon(icon, size: 80),
        SizedBox(
          height: 15,
        ),
          Text(
            label ,style: TextStyle(
             color: Color(0xff8e8e98),
              fontSize: 18.0, 
            ),
          )
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour , required this.cardChild});
     final   Color colour;
     final Widget cardChild ;
  @override
  Widget build(BuildContext context) {
    return Container(
                child: cardChild,
                 margin: EdgeInsets.all(10.0),
                 decoration:  BoxDecoration(
                  color: colour,
                  borderRadius: BorderRadius.circular(10.0),
                 ),
                );
  }
}