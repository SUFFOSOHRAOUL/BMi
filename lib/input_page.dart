import 'package:flutter/material.dart';

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
            
                  child: ReuseableCard(colour: Color(0xff1d1e33)),
                  
              ),
              Expanded(
            
                  child:  ReuseableCard(colour: Color(0xff1d1e33)),
              ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: Color(0xff1d1e33)),
                  
              ),
                ]
              ),
            ),
          
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(colour: Color(0xff1d1e33)),
                  
              ),
              
                  Expanded(
            
                  child:  ReuseableCard(colour: Color(0xff1d1e33),),
                  
              ),
                ]
              ),
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