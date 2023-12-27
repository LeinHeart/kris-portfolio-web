import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle({Color? textColor}) {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: textColor ?? Colors.white,
    );
  }

  static TextStyle montserratStyle({Color? textColor, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: textColor ?? Colors.white,
    );
  }

  static TextStyle headingStyle(
      {Color? textColor, FontWeight? fontWeight, double? fontSize}) {
    return GoogleFonts.rubik(
      fontSize: fontSize ?? 36,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: textColor ?? Colors.white,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle({Color? textColor, double fontSize = 16}) {
    return GoogleFonts.signikaNegative(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: textColor ?? Colors.white,
      letterSpacing: 1,
    );
  }
}
