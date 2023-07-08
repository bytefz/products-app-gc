import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(65, 66, 227, 1),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ),
      );
}
