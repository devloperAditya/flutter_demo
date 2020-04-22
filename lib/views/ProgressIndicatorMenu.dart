import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorMenu extends StatelessWidget {

  int screenNo = 0;
  ProgressIndicatorMenu(this.screenNo);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width - 32.0;
    double actualWidth = width/7.0;
    double progressMenuItemLineHeight = 2;
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            height: actualWidth,
            width: actualWidth,
            decoration: Constants.progressItemDecoration,
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              child: Text(
                "1",
                style: Constants.progressItemTextStyle
              ),
              backgroundColor: screenNo > 0 ? Constants.progressMenuColor : Colors.white,
            ),
          ),
          Container(
            color: Colors.black,
            height: progressMenuItemLineHeight,
            width: actualWidth,
          ),
          Container(
            height: actualWidth,
            width: actualWidth,
            decoration: Constants.progressItemDecoration,
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              child: Text(
                  "2",
                  style: Constants.progressItemTextStyle
              ),
              backgroundColor: screenNo > 1 ? Constants.progressMenuColor : Colors.white,
            ),
          ),
          Container(
            color: Colors.black,
            height: progressMenuItemLineHeight,
            width: actualWidth,
          ),
          Container(
            height: actualWidth,
            width: actualWidth,
            decoration: Constants.progressItemDecoration,
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              child: Text(
                  "3",
                  style: Constants.progressItemTextStyle
              ),
              backgroundColor: screenNo > 2 ? Constants.progressMenuColor : Colors.white,
            ),
          ),
          Container(
            color: Colors.black,
            height: progressMenuItemLineHeight,
            width: actualWidth,
          ),
          Container(
            height: actualWidth,
            width: actualWidth,
            decoration: Constants.progressItemDecoration,
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              child: Text(
                  "4",
                  style: Constants.progressItemTextStyle
              ),
              backgroundColor: screenNo > 3 ? Constants.progressMenuColor : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
