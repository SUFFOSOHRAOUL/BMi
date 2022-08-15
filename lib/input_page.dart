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
            
                  child: ReuseableCard(),
                  
              ),
              Expanded(
            
                  child:  ReuseableCard(),
              ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(),
                  
              ),
                ]
              ),
            ),
          
            Expanded(
              child: Row(
                children: [
                  Expanded(
            
                  child: ReuseableCard(),
                  
              ),
              
                  Expanded(
            
                  child:  ReuseableCard(),
                  
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
  const ReuseableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                
                 margin: EdgeInsets.all(10.0),
                 decoration:  BoxDecoration(
    color: Color(0xff1d1e33),
    borderRadius: BorderRadius.circular(10.0),
                 ),
                );
  }
}