import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
