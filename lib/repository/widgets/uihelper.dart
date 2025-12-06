import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  static Image CustomImage({
    required String img,
    double? height,
    double? width,
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    return Image.asset('assets/image/$img', height: height, width: width);
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontsize,
    double? height,
    double? width,
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
