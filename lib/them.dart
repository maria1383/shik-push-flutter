import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.cyanAccent.shade200,
    colorScheme: ColorScheme.light(primary: Colors.blue.shade300,onPrimary: Colors.black54,),
    fontFamily: "Maryam",
    platform: TargetPlatform.iOS,
    textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 16.0,
    color: Colors.grey.shade900),
    bodyMedium: TextStyle(fontSize: 14.0,color: Colors.grey.shade900),
    labelSmall: TextStyle(fontSize: 10.0,color: Colors.grey.shade400),
    ),

  );
}
