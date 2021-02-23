import 'package:flutter/material.dart';

final theme = ThemeData.light().copyWith(
  inputDecorationTheme: InputDecorationTheme(
    errorMaxLines: 2,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFDADADA),
      ),
    ),
    labelStyle: const TextStyle(
      color: Color.fromRGBO(0, 0, 0, 0.6),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 4,
    ),
  ),
  primaryColor: const Color(0xFF6200EE),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: const Color(0xFF6200EE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(19),
    ),
  ),
  appBarTheme: const AppBarTheme(centerTitle: true),
);
