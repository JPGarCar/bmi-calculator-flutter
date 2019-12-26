import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, @required this.nextPageFunction});

  final String text;
  final Function nextPageFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPageFunction,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonText,
          ),
        ),
      ),
    );
  }
}
