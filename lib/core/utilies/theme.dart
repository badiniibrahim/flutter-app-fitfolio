import 'package:fitfolio/core/utilies/colors.style.dart';
import 'package:fitfolio/core/utilies/texts.style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.teal1,
    iconTheme: const IconThemeData(
      color: AppColors.primaryText,
    ),
    titleTextStyle: IText.header1.copyWith(
      fontFamily: GoogleFonts.inter().fontFamily,
      letterSpacing: 1,
      fontSize: 15,
    ),
    toolbarTextStyle: const TextStyle(
      color: AppColors.primaryText,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  );
}
