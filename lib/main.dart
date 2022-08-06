import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const BMI_CALCULATOR());
}

class BMI_CALCULATOR extends StatelessWidget {
  const BMI_CALCULATOR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: inputPage(),
    );
    
  }
}

class inputPage extends StatelessWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text(' body text'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){

        },
        child:Icon(Icons.add),)
    );
    
  }
}