import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_text.dart';

const boxColorOne = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    color: boxColorOne,
                    cardChild: IconTextWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: boxColorOne,
                  cardChild: IconTextWidget(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                )),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: boxColorOne)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: boxColorOne)),
                Expanded(child: ReusableCard(color: boxColorOne)),
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
