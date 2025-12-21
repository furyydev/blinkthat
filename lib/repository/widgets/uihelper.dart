import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  static Widget CustomImage({
    required String img,
    double? height,
    double? width,
    double? top,
    double? left,
    double? bottom,
    double? right,
    double? opacity,
  }) {
    Widget image = Image.asset('assets/image/$img', height: height, width: width);
    if (opacity != null) {
      return Opacity(opacity: opacity, child: image);
    }
    return image;
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

  static Widget CustomTextField({
    required TextEditingController controller,
    String? hintText,
  }) {
    return Container(
      height: 37,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText ?? 'Search',
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 12,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.grey.shade300,
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.mic,
                  color: Colors.black,
                  size: 20,
                ),
              ],
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          ),
        ),
      ),
    );
  }
}
