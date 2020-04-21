import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {

  String buttonText = "";
  var buttonAction = null;
  CustomActionButton(this.buttonText, this.buttonAction);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
            ),
            color: Colors.blue
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      onTap: buttonAction,
    );
  }
}
