import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // to change the theme of the entire app
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      /*ThemeData(
          // add 0xFF to add the alpha value
          primaryColor: Color(0xFF64FF52),
          scaffoldBackgroundColor: Colors.green,
          accentColor: Colors.purple,
          textTheme: TextTheme(
              body1: TextStyle(
            color: Colors.white,
          ))),*/
      home: InputPage(),
    );
  }
}
