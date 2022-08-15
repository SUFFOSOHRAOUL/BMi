import 'package:flutter/material.dart';
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
            
                  child: ReuseableCard(colour: cardcolor ),
                  
              ),
              Expanded(
            
                  child:  ReuseableCard(colour: cardcolor),
              ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: cardcolor),
                  
              ),
                ]
              ),
            ),
          
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: cardcolor),
                  
              ),
              
                  Expanded(
            
                  child:  ReuseableCard(colour: cardcolor),
                  
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

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour});
     final   Color colour;
    
  @override
  Widget build(BuildContext context) {
    return Container(
                
                 margin: EdgeInsets.all(10.0),
                 decoration:  BoxDecoration(
                  color: colour,
                  borderRadius: BorderRadius.circular(10.0),
                 ),
                );
  }
}