import 'package:flutter/material.dart';

// use constants to have quick access to variable modifiers
const marginValue = 15.0;
const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  // no need to use key thus we use our won constructor
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(marginValue),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        // Color has to go inside the box decoration
        color: color,
      ),
      /* NOT USED TO USE THE EXPANDED WIDGET
        height: 200.0,
        width: 170.0,*/
    );
  }
}
