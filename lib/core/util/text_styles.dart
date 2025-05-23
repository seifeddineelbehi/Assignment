import 'package:assignment/core/util/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Lato Styles
  static TextStyle latoLarge({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w600,
  }) => GoogleFonts.lato(
    fontSize: 32.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.25,
  );

  static TextStyle latoMedium({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w500,
  }) => GoogleFonts.lato(
    fontSize: 16.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.25,
  );

  static TextStyle latoSmall({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w400,
  }) => GoogleFonts.lato(
    fontSize: 12.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.3,
  );

  // EB Garamond Styles
  static TextStyle ebGaramondLarge({
    Color color = Palette.textColor,
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.w600,
  }) => GoogleFonts.ebGaramond(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.25,
  );

  static TextStyle ebGaramondMedium({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w500,
  }) => GoogleFonts.ebGaramond(
    fontSize: 16.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.25,
  );

  static TextStyle ebGaramondSmall({
    Color color = Palette.textColor,
    FontWeight fontWeight = FontWeight.w400,
  }) => GoogleFonts.ebGaramond(
    fontSize: 12.sp,
    fontWeight: fontWeight,
    color: color,
    height: 1.3,
  );
}
