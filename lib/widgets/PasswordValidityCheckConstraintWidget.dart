import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';

class PasswordValidityCheckConstraintWidget extends StatelessWidget {

  bool constraintCheckFlag;
  String constraintCondition;
  String constraintName;

  PasswordValidityCheckConstraintWidget(this.constraintCheckFlag, this.constraintCondition, this.constraintName);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          constraintCheckFlag ?
          Image.asset(
            "drawables/tick.png",
            height: 32,
          ):
          Text(
            constraintCondition,
            style: Constants.passswordRulesTextStyle,
          ),
          Text(
            constraintName,
            style: Constants.textColorWhiteStyle,
          )
        ],
      ),
    );
  }
}
