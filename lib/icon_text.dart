import 'package:flutter/material.dart';

const iconSize = 80.0;
const dividerHeight = 15.0;
const textStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IconTextWidget extends StatelessWidget {
  IconTextWidget({@required this.icon, @required this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: dividerHeight,
        ),
        Text(
          label,
          style: textStyle,
        )
      ],
    );
  }
}
