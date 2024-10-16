import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._init();
  static AppTheme get instance => _instance;

  AppTheme._init();

  ThemeData get lightTheme => ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white30,
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            )),
        textTheme: GoogleFonts.interTextTheme(),
        //GoogleFonts.montserratTextTheme(),
      );
}

class ColorConstants {
  static const Color navyBlue = Color(0xFF000080);
  static const Color lotusBlue = Color(0xFF6767E1);
}
