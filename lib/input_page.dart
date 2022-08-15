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
            Row(
              children: [
                Expanded(

                child: Container(
               height: 170,
               margin: EdgeInsets.all(10.0),
               decoration:  BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10.0),
               ),
              ),
                
            ),
            Expanded(

                child: Container(
               height: 170,
               
               margin: EdgeInsets.all(10.0),
               decoration:  BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10.0),
               ),
              ),
                
            )
             
              ],
            ),
            Row(
              children: [
                Expanded(

                child: Container(
               height: 170,
               margin: EdgeInsets.all(10.0),
               decoration:  BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10.0),
               ),
              ),
                
            ),
              ]
            ),
          
            Row(
              children: [
                Expanded(

                child: Container(
               height: 170,
               margin: EdgeInsets.all(10.0),
               decoration:  BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10.0),
               ),
              ),
                
            ),
            
                Expanded(

                child: Container(
               height: 170,
               margin: EdgeInsets.all(10.0),
               decoration:  BoxDecoration(
                color: Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10.0),
               ),
              ),
                
            ),
              ]
            ),
          ],
        ),
    
        
    );
    
  }
}