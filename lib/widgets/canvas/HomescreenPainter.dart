import 'package:dkatalis_demo/Constants/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Constants.primaryBlueColor
      ..style = PaintingStyle.fill;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);



    Path path = Path();
    path.moveTo(size.width * 0.4 , size.height);
    path.lineTo(size.width* 0.6, size.height *0.4);

    paint = Paint()
      ..color = Color.fromRGBO(49, 95, 181, 1.0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawPath(path, paint);




    paint = Paint()
      ..color = Color.fromRGBO(49, 95, 181, 1.0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14.0;

    path = Path();
    path.moveTo(size.width * 0.2 , size.height *0.95);
    path.lineTo(size.width* 0.48, size.height *0.15);

    canvas.drawPath(path, paint);


    paint = Paint()
      ..color = Constants.homescreenBackground
      ..style = PaintingStyle.fill;

    path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.1, size.height *0.2, size.width, size.height);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }

}