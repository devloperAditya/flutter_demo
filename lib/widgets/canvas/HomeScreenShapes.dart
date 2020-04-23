import 'package:dkatalis_demo/widgets/canvas/HomescreenPainter.dart';
import 'package:flutter/material.dart';

class HomeScreenShapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 200.0,
      ),
      painter: HomeScreenPainter(),
    );
  }
}
