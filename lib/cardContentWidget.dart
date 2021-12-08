import 'package:flutter/material.dart';

const cardTextColor = Color(0xff8d8e98);

const cardTextStyle = TextStyle(fontSize: 18.0, color: cardTextColor);

class CardContentWidget extends StatelessWidget {
  CardContentWidget({this.cardIcon, this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: cardTextStyle,
        ),
      ],
    );
  }
}
