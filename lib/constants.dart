import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kHintTextStyle = GoogleFonts.openSans(
  color: Colors.white54,
);
final kLabelStyle = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF2BB6A8),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
