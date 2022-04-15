import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData globalTheme() => ThemeData(
  primaryColorLight: const Color.fromRGBO(45, 125, 120, 1.0),
  appBarTheme: const AppBarTheme(
      color: Color(0xFFbbbbbb)
  ),
  fontFamily: 'Georgia',
  splashColor: Colors.brown,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Colors.lightGreen,
  ).copyWith(
    secondary: Colors.green,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.oswald(fontSize: 50),
    headline2: GoogleFonts.oswald(fontSize: 50),
    bodyText1: GoogleFonts.play(fontSize: 50),
    bodyText2: GoogleFonts.oswald(fontSize: 20),
  ),
);