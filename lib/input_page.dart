import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color greyCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    greyCardColor,
                    mars_venus_widget(FontAwesomeIcons.mars, "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    greyCardColor,
                    mars_venus_widget(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(greyCardColor, SizedBox()),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(greyCardColor, SizedBox()),
                ),
                Expanded(
                  child: ReusableCard(greyCardColor, SizedBox()),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
