import 'package:dkatalis_demo/activities/PasswordScreen.dart';
import 'package:dkatalis_demo/activities/PersonalInfoScreen.dart';
import 'package:dkatalis_demo/activities/ScheduleVideoCallScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'activities/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScheduleVideoCallScreen(),
    );
  }
}
