import 'package:flutter/material.dart';
import 'constants.dart';
class genderCard extends StatelessWidget {
  genderCard({@required this.title,@required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}