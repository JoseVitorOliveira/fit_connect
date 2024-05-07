import 'package:fit_connect/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData().copyWith(
    dividerTheme: const DividerThemeData(
      color: AppPallete.lightGrayDivider,
      thickness: 0.7,
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.gothicA1(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppPallete.lightGrayText,
      ),
      bodyMedium: GoogleFonts.gothicA1(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppPallete.blackText,
      ),
    ),
  );
}
