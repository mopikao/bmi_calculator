import 'package:flutter/material.dart';

class mars_venus_widget extends StatelessWidget {
  mars_venus_widget(this.userDefinedIcon, this.userDefinedText);

  final IconData userDefinedIcon;
  final String userDefinedText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          userDefinedIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          userDefinedText,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
