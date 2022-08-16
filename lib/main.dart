

import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(const BMI_CALCULATOR());
}

class BMI_CALCULATOR extends StatelessWidget {
  const BMI_CALCULATOR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
       
        appBarTheme: AppBarTheme(
          color:Color(0xFF0A0E21),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      textTheme: TextTheme(
        bodyText1:TextStyle(color: Color(0xffffffff)) 
      ),
      
      ),
      home: input_page(),
    ); 
    
  }
}
