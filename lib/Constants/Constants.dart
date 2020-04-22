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
}