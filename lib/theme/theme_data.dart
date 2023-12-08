import 'package:flutter/material.dart';
//sabai themes ko lagi yei rakhne

ThemeData getApplicationTheme() {
  return ThemeData(
    fontFamily: 'Montserrat Bold',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: 'Times New Roman ',
        ),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  );
}
