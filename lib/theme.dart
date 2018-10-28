import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = new ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.white,
    dividerColor: Colors.grey[300],
    backgroundColor: Colors.grey[100],
    primaryColor: MyColors.theme[500],
    primaryColorDark: MyColors.theme[600],
    primaryColorBrightness: Brightness.light,
    secondaryHeaderColor: Colors.white,
    accentColor: MyColors.accent[500],
    primaryTextTheme: new Typography(platform: defaultTargetPlatform).white,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    accentIconTheme: const IconThemeData(color: Colors.white),
);

class MyColors {
  MyColors._(); // this basically makes it so you can instantiate this class

  static const Color text = Color(0xFF211A16);

  static const Map<int, Color> theme = const <int, Color>{
    600: const Color(0xFF211A16),
    500: const Color(0xFF54473F)
  };

  static const Map<int, Color> accent = const <int, Color>{
    500: const Color(0xFFDB5A4A),
  };
}