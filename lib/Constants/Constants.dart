import 'package:flutter/material.dart';

class Constants {
  static final BoxDecoration progressItemDecoration = BoxDecoration(
    color: Colors.black, // border color
    shape: BoxShape.circle,
  );

  static final TextStyle progressItemTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );

  static final TextStyle passswordRulesTextStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );

  static final TextStyle textColorWhiteStyle = TextStyle(
    color: Colors.white
  );

  static final months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  static final weekdays = ["Mon", "Tue", "Wed", "Thr", "Fri", "Sat", "Sun"];

  static final primaryBlueColor = Color.fromRGBO(66, 126, 240, 1.0);
  static final actionButtonColor = Color.fromRGBO(105, 158, 238, 1.0);
  static final progressMenuColor = Color.fromRGBO(120, 166, 91, 1.0);
  static final homescreenBackground = Color.fromRGBO(249, 249, 249, 1.0);
  static final textBackground = Color.fromRGBO(245, 245, 245, 1.0);
  static final grey = Color.fromRGBO(159, 159, 159, 1.0);
}