import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.brown,
        textTheme: lightThemeText,
      );
  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrangeAccent,
      );
  static TextTheme lightThemeText = TextTheme(
    headline1: GoogleFonts.jetBrainsMono(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 50,
        color: Colors.deepPurpleAccent),
    headline2: GoogleFonts.openSans(
        fontWeight: FontWeight.w700, fontSize: 25, color: Colors.black),
    headline3: GoogleFonts.cairo(
        fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
    bodyText1: GoogleFonts.alice(
        fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black),
  );
  static TextTheme darkThemeText = TextTheme(
    headline1: GoogleFonts.jetBrainsMono(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 50,
        color: Colors.deepPurple),
    headline2: GoogleFonts.openSans(
        fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
    headline3: GoogleFonts.cairo(
        fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
    bodyText1: GoogleFonts.alice(
        fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white),
  );
}
