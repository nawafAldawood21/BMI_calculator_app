import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {

  ReuseableCard({@required this.colour, this.cardChild,this.onPress});
  final Widget cardChild;
  final Color colour;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}