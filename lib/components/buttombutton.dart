import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButton extends StatelessWidget {
  const bottomButton({required this.onTap, required this.label});

  final Function onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargelabelstyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
