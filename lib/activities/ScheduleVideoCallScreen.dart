import 'dart:io' ;
import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:dkatalis_demo/widgets/CustomActionButton.dart';
import 'package:dkatalis_demo/widgets/PickerDropdownWidget.dart';
import 'package:dkatalis_demo/widgets/ProgressIndicatorMenu.dart';
import 'package:dkatalis_demo/widgets/RippleAnimation.dart';
import 'package:dkatalis_demo/widgets/dialogs/DialogThanks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScheduleVideoCallScreen extends StatefulWidget {
  @override
  _ScheduleVideoCallScreenState createState() => _ScheduleVideoCallScreenState();
}

class _ScheduleVideoCallScreenState extends State<ScheduleVideoCallScreen> {

//  ------------------- Private Variables ---------------------

  var selectedTime = "-Choose Time-";
  var selectedDate = "-Choose Date";
  DateTime today = DateTime.now();

//  ----------------------- Overide Methods ------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
          backgroundColor: Constants.primaryBlueColor,
        ),
        body: Container(
          color: Constants.primaryBlueColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  child: Center(child: ProgressIndicatorMenu(3)),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 120,
                        child: Align(
                            child: RippleAnimation(),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Schedule Video Call",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Choose the date and time that you preffered, we will send a link via email to make a video call on the scheduled date and time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        PickerDropdownWidget("Date", selectedDate, _openDatePicker),

                        Padding(
                          padding: const EdgeInsets.only(top:32.0),
                          child: PickerDropdownWidget("Time", selectedTime, _openTimePicker),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: CustomActionButton("Next", goToNextPage),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

// ------------------------- Private Methods ---------------------------
  void goToNextPage() {

//    IF all the dropdown values are selected open a dialog
    if(null != selectedTime && "-Choose Time-" != selectedTime
        && null != selectedDate && "-Choose Date" != selectedTime)
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return DialogThanks();
      },
    );
  }

  void _openDatePicker(BuildContext context) async {

//    Date picker as per native platform
    if(Platform.isAndroid) {
      final DateTime newdate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2101));
      if (newdate != null && newdate != selectedDate)
        setState(() {
          selectedDate = Constants.weekdays[newdate.weekday -1 ] +
              ", " + newdate.day.toString() + " " +
              Constants.months[newdate.month - 1] + " " +
              newdate.year.toString();
        });
    }
    else if(Platform.isIOS) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext builder) {
            return Container(
              height: MediaQuery.of(context).copyWith().size.height / 3,
              child: CupertinoDatePicker(
                initialDateTime: new DateTime(today.year, today.month, today.day + 1),
                minimumDate: new DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime newdate) {
                  setState(() {
                    selectedDate = Constants.weekdays[newdate.weekday -1 ] +
                        ", " + newdate.day.toString() + " " +
                        Constants.months[newdate.month - 1] + " " +
                        newdate.year.toString();
                  });
                },
              ),
            );
          });
    }

  }

  void _openTimePicker(BuildContext context) async {

//    Time picker as per native platform
    if(Platform.isAndroid) {
      final TimeOfDay newdate = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child,
          );
        },
      );
      if (newdate != null && newdate != selectedDate)
        setState(() {
          selectedTime = newdate.hour.toString() +
              ":" + newdate.minute.toString();
        });
    }
    else if(Platform.isIOS) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext builder) {
            return Container(
              height: MediaQuery.of(context).copyWith().size.height / 3,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                use24hFormat: true,
                onDateTimeChanged: (DateTime newdate) {
                  setState(() {
                    selectedTime = newdate.hour.toString() + ":" + newdate.minute.toString();
                  });
                },
              ),
            );
          });
    }
  }
}
