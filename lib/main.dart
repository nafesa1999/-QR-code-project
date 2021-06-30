import 'package:flutter/material.dart';
import 'package:project/forPatient/welcomePage.dart';
import 'package:project/myProject.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import'dart:io';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: welcomePage(),
      home: myProject(),
    );
  }
}
