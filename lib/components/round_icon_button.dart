import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.function});

  final IconData icon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: function,
      elevation: 4.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      constraints: BoxConstraints.tight(Size(45, 45)),
    );
  }
}
