import 'package:flutter/material.dart';

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
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
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

class ReusableCard extends StatelessWidget {
  // no need to use key thus we use our won constructor
  ReusableCard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // Color has to go inside the box decoration
        color: color,
      ),
      /* NOT USED TO USE THE EXPANDED WIDGET
        height: 200.0,
        width: 170.0,*/
    );
  }
}
