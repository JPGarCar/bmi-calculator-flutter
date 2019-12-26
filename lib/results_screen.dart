import 'components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'components/reusable_card.dart';

class ResultsScreen extends StatelessWidget {
  final String bmi;
  final String tip;
  final String status;

  ResultsScreen(
      {@required this.bmi, @required this.status, @required this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: kTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results",
                style: kBigTittle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: kActiveBoxColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      status.toUpperCase(),
                      style: kSmallGreenText,
                    ),
                  ),
                  Container(
                    child: Text(
                      bmi,
                      style: kBigNumberText,
                    ),
                  ),
                  Container(
                    child: Text(
                      tip,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              text: "RE-CALCULATE",
              nextPageFunction: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
