import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kDividerHeight,
        ),
        Text(
          label,
          style: kTextStyle,
        )
      ],
    );
  }
}
