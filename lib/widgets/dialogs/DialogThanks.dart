import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';

class DialogThanks extends StatefulWidget {
  @override
  _DialogThanksState createState() => _DialogThanksState();
}

class _DialogThanksState extends State<DialogThanks> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(
                  15
              )
          )
      ),
      contentPadding: EdgeInsets.all(8),
      content: IntrinsicHeight(
        child: IntrinsicWidth(
          child: Container(
            child: Center(
              child: Text(
                "Thank You !!",
                style: TextStyle(
                  color: Constants.primaryBlueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32
                ),
              )
            ),
          ),
        ),
      ),
      actions: <Widget>[
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
          ),
          color: Constants.primaryBlueColor,
          textColor: Colors.white,
          child: Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

}
