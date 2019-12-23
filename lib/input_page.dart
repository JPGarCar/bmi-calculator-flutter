import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_text.dart';

const activeBoxColor = Color(0xFF1D1E33);
const inactiveBoxColor = Color(0xFF111328);
const bottomContainerHeight = 80.0;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleGenderColor = inactiveBoxColor;
  Color femaleGenderColor = inactiveBoxColor;

  void changeColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleGenderColor == inactiveBoxColor) {
        maleGenderColor = activeBoxColor;
        femaleGenderColor = inactiveBoxColor;
      } else {
        maleGenderColor = inactiveBoxColor;
      }
    } else {
      if (femaleGenderColor == inactiveBoxColor) {
        femaleGenderColor = activeBoxColor;
        maleGenderColor = inactiveBoxColor;
      } else {
        femaleGenderColor = inactiveBoxColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleGenderColor,
                      cardChild: IconTextWidget(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    color: femaleGenderColor,
                    cardChild: IconTextWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeBoxColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeBoxColor)),
                Expanded(child: ReusableCard(color: activeBoxColor)),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      /*floatingActionButton: Theme(
        // to change something we can wrap with theme widget and pass a new theme
        data: ThemeData.light(),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),*/
    );
  }
}
