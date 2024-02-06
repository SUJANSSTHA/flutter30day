import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        // fontFamily: GoogleFonts.aBeeZee,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              // fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            )
            // backgroundColor: Colors.black,
            ),
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,

        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      );
  // Colors
  static Color creamColor = Color(0xfff5f5f5f);
  static Color darkBluishColor = Color(0xff403b58);
}
