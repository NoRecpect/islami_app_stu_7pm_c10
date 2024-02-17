import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xffb7935f);
  static const Color primaryDarkColor = Color(0xff141A2E);
  static const Color onPrimaryDarkColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      dividerTheme: const DividerThemeData(color: primaryColor),
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
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messiri",
        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "El Messiri",
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      dividerTheme: const DividerThemeData(color: onPrimaryDarkColor),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: onPrimaryDarkColor),
        titleTextStyle: TextStyle(
          color: onPrimaryDarkColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messiri",
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: onPrimaryDarkColor,
        selectedIconTheme: IconThemeData(
          color: onPrimaryDarkColor,
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 17,
          color: onPrimaryDarkColor,
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
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messiri",
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: "El Messiri",
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
      ));
}
