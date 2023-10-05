import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: Colors.lightBlue,
        onPrimary: Colors.black,
        secondary: Colors.orangeAccent,
        onSecondary: Colors.white,
      ),
);

final darkTheme = ThemeData(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.blueGrey,
        onPrimary: Colors.white,
        secondary: Colors.greenAccent,
        onSecondary: Colors.white,
      ),
);