import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      titleTextStyle:
          TextStyle(fontSize:30, color: Colors.black, fontFamily: "Maryam"),
    ),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Color.fromARGB(255, 42, 11, 219),
      onPrimary: Colors.black54,
    ),
    fontFamily: "Maryam",
    platform: TargetPlatform.iOS,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 16.0, color: Colors.grey.shade900),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey.shade900),
      labelSmall: TextStyle(fontSize: 10.0, color: Colors.grey.shade400),
    ),
  );
}
