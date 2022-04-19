import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgets{
  Text putText(final String text,final double textSize , final double spacing, Color textColor)
  {
    return Text(text,
      style: GoogleFonts.montserrat(
        fontSize: textSize,
        color: textColor,
        letterSpacing: spacing,
        fontWeight: FontWeight.w300,

      ),
    );
  }
}