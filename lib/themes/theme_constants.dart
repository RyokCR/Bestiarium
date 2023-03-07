import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
  brightness: Brightness.light,



);

ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
  brightness: Brightness.dark,


textTheme: TextTheme(
  bodyMedium: GoogleFonts.alexBrush(
      fontSize: 30)
)


);