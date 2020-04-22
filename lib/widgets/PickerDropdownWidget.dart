import 'package:flutter/material.dart';

class PickerDropdownWidget extends StatelessWidget {

  var widgetClickedAction;
  String headingLabel;
  String actualValue;

  PickerDropdownWidget(this.headingLabel, this.actualValue,this.widgetClickedAction);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                            actualValue,
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
      onTap: () {
        widgetClickedAction(context);
      },
    );
  }
}
