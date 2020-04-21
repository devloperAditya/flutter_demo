import 'package:dkatalis_demo/views/ProgressIndicatorMenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset("drawables/screen1image.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0, top:48.0),
                    child: ProgressIndicatorMenu(0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

