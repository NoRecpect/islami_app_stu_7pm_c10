import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffb7935f);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messiri",
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 17,
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Colors.white,
      ),
    ),
  );
}
