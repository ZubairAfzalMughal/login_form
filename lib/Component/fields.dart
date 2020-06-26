import 'package:flutter/material.dart';

import '../constant.dart';


class Fields extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSet;
  const Fields({
    Key key,
    this.icon,
    this.title,
    this.isSet
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSet? EdgeInsets.symmetric(vertical:30.0):EdgeInsets.zero,
      child: Container(
        margin:EdgeInsets.symmetric(horizontal:20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 6),
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 25.0
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(
              color: kTextColor
            ),
            border: InputBorder.none,
            prefixIcon: Icon(icon,color: kTextColor,)
          ),
        ),
      ),
    );
  }
}

