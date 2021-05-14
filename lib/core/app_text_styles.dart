import 'package:flutter/material.dart';
import 'package:flutterweeklychallenge1/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.poppins(
    color: AppColors.light,
    fontWeight: FontWeight.w600,
    fontSize: 40
  );

  static final TextStyle normalText = GoogleFonts.poppins(
    color: AppColors.light,
    fontWeight: FontWeight.w300,
    
    fontSize: 30
  );

  static final TextStyle descriptionText = GoogleFonts.poppins(
    color: AppColors.light,
    fontWeight: FontWeight.w600,
    fontSize: 22
  );

  static final TextStyle ButtonTransparent = GoogleFonts.poppins(
    color: AppColors.light,
    fontWeight: FontWeight.w600,
    fontSize: 40
  );
}
