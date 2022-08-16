import 'package:flutter/material.dart';
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

