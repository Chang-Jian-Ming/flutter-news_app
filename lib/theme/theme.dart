import 'package:flutter/material.dart';

ThemeData appTheme() {
  Color primaryColor = Colors.white;
  Color accentColor = Colors.black87;
  Color buttonColor = Colors.amber[800];

  return ThemeData(
    primaryColor: primaryColor,
    accentColor: accentColor,
    buttonColor: buttonColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: accentColor,
      ),
      headline2: TextStyle(
        fontSize: 15,
        color: accentColor,
      ), 
      headline3: TextStyle(
        fontSize: 15,
        color: Colors.lightBlue,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}