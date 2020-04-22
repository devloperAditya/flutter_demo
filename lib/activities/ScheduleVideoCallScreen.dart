import 'package:dkatalis_demo/views/CustomActionButton.dart';
import 'package:dkatalis_demo/views/ProgressIndicatorMenu.dart';
import 'package:dkatalis_demo/views/RippleAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScheduleVideoCallScreen extends StatefulWidget {
  @override
  _ScheduleVideoCallScreenState createState() => _ScheduleVideoCallScreenState();
}

class _ScheduleVideoCallScreenState extends State<ScheduleVideoCallScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
        ),
        body: Container(
          color: Colors.blue[700],
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
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0) //         <--- border radius here
                                ),
                                color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                                "Date",
                                              style: TextStyle(
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:4.0),
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                  "-Choose Date-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Icon(Icons.keyboard_arrow_down),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: _openDatePicker,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:32.0),
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0) //         <--- border radius here
                                  ),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Time",
                                                style: TextStyle(
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:4.0),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "-Choose Date-",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: Icon(Icons.keyboard_arrow_down),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: _openTimePicker,
                          ),
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

  void goToNextPage() {

  }

  void _openDatePicker() {

  }

  void _openTimePicker() {

  }
}
