import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.style.dart';

abstract class IText {
  static const double headline2FS = 16;
  static const double header1FS = 25;
  static const double letterSpacing = .5;
  static const double letterSpacing2 = 1.5;
  static const double letterSpacing3 = .4;
  static const double letterSpacing4 = .2;

  static const header1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const header1Black = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontSize: header1FS,
    letterSpacing: letterSpacing,
  );
  static const header2Black = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    fontSize: 25,
    letterSpacing: letterSpacing4,
  );
  static const header4Black = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    fontSize: 17,
    letterSpacing: letterSpacing4,
  );
  static const header3Black = TextStyle(
    fontWeight: FontWeight.w800,
    color: AppColors.black,
    fontSize: 13,
    letterSpacing: letterSpacing4,
  );
  static const header3Red = TextStyle(
    fontWeight: FontWeight.w800,
    color: AppColors.red1,
    fontSize: 13,
    letterSpacing: letterSpacing4,
  );
  static const header1Grey = TextStyle(
    fontWeight: FontWeight.w900,
    color: AppColors.grey8,
    fontSize: 15,
    letterSpacing: letterSpacing3,
  );
  static const header2Grey = TextStyle(
    fontWeight: FontWeight.w900,
    color: AppColors.grey7,
    fontSize: 14,
    letterSpacing: letterSpacing3,
  );
  static const header1White = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: header1FS,
    letterSpacing: letterSpacing,
  );

  static final headline2Grey5 = TextStyle(
    fontSize: headline2FS.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grey5,
    letterSpacing: letterSpacing,
    height: 1.5,
  );

  static const headline2grey5LS2 = TextStyle(
    fontSize: headline2FS,
    fontWeight: FontWeight.w500,
    color: AppColors.grey5,
    letterSpacing: letterSpacing2,
    height: 1.5,
  );

  static const headline2White = TextStyle(
    fontSize: headline2FS,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    letterSpacing: letterSpacing,
  );

  static const headline1 = TextStyle(
    color: AppColors.black,
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );

  static const inputHintStyle = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
  );

  static final inputLabelStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    color: AppColors.primaryText.withOpacity(0.5),
  );

  static const labelStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const labelStyleLS2 = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    letterSpacing: letterSpacing2,
  );

  static const errorTextStyle = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
  );

  static const subtitle1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static const subtitle1Black = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static const subtitle1Fs16Black = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    letterSpacing: letterSpacing4,
  );

  static final inputPhoneStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
    color: AppColors.primaryText.withOpacity(0.5),
  );

  static final headline2 = TextStyle(
    fontFamily: 'Roboto',
    color: AppColors.primaryText.withOpacity(0.5),
    fontSize: 16.0,
  );

  static const profileStyle = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );

  static const profileTitleStyle = TextStyle(
    fontSize: 12.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle text1 = headline2Grey5.copyWith(
    fontSize: 14.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle text1Bold = text1.copyWith(
    fontWeight: FontWeight.bold,
  );

  static final TextTheme whiteTextTheme = TextTheme(
    displayLarge: Typography.whiteMountainView.displayLarge?.copyWith(),
    displayMedium: Typography.whiteMountainView.displayMedium?.copyWith(),
    displaySmall: Typography.whiteMountainView.displaySmall?.copyWith(),
    headlineLarge: Typography.whiteMountainView.headlineLarge?.copyWith(),
    headlineMedium: Typography.whiteMountainView.headlineMedium?.copyWith(),
    headlineSmall: Typography.whiteMountainView.headlineSmall?.copyWith(),
    titleLarge: Typography.whiteMountainView.titleLarge?.copyWith(),
    titleMedium: Typography.whiteMountainView.titleMedium?.copyWith(),
    titleSmall: Typography.whiteMountainView.titleSmall?.copyWith(),
    bodyLarge: Typography.whiteMountainView.bodyLarge?.copyWith(),
    bodyMedium: Typography.whiteMountainView.bodyMedium?.copyWith(),
    bodySmall: Typography.whiteMountainView.bodySmall?.copyWith(),
    labelLarge: Typography.whiteMountainView.labelLarge?.copyWith(),
    labelMedium: Typography.whiteMountainView.labelMedium?.copyWith(),
    labelSmall: Typography.whiteMountainView.labelSmall?.copyWith(),
  );

  static final TextTheme blackTextTheme = TextTheme(
    displayLarge: Typography.blackMountainView.displayLarge?.copyWith(),
    displayMedium: Typography.blackMountainView.displayMedium?.copyWith(),
    displaySmall: Typography.blackMountainView.displaySmall?.copyWith(),
    headlineLarge: Typography.blackMountainView.headlineLarge?.copyWith(),
    headlineMedium: Typography.blackMountainView.headlineMedium?.copyWith(),
    headlineSmall: Typography.blackMountainView.headlineSmall?.copyWith(),
    titleLarge: Typography.blackMountainView.titleLarge?.copyWith(),
    titleMedium: Typography.blackMountainView.titleMedium?.copyWith(),
    titleSmall: Typography.blackMountainView.titleSmall?.copyWith(),
    bodyLarge: Typography.blackMountainView.bodyLarge?.copyWith(),
    bodyMedium: Typography.blackMountainView.bodyMedium?.copyWith(),
    bodySmall: Typography.blackMountainView.bodySmall?.copyWith(),
    labelLarge: Typography.blackMountainView.labelLarge?.copyWith(),
    labelMedium: Typography.blackMountainView.labelMedium?.copyWith(),
    labelSmall: Typography.blackMountainView.labelSmall?.copyWith(),
  );

  // static const headline1 = baseTextTheme.headline1!.copyWith(
  //   color: primaryText,
  //   fontSize: 34.0,
  //   fontWeight: FontWeight.bold,
  // );

  // static const headline2 = baseTextTheme.headline2!.copyWith(
  //   color: primaryText,
  //   fontSize: 22,
  //   fontWeight: FontWeight.bold,
  // );

  // static const headline3 = baseTextTheme.headline3!.copyWith(
  //   color: secondaryText,
  //   fontSize: 20,
  //   fontWeight: FontWeight.w600,
  // );

  // static const headline4 = baseTextTheme.headline4!.copyWith(
  //   color: primaryText,
  //   fontSize: 18,
  //   fontWeight: FontWeight.w600,
  // );

  // static const headline5 = baseTextTheme.headline5!.copyWith(
  //   color: primaryText,
  //   fontSize: 16,
  //   fontWeight: FontWeight.w700,
  // );

  // static const headline6 = baseTextTheme.headline6!.copyWith(
  //   color: primaryText,
  //   fontSize: 14,
  //   fontWeight: FontWeight.w700,
  // );

  // static const bodyText1 = baseTextTheme.bodyText1!.copyWith(
  //   color: secondaryText,
  //   fontSize: 15,
  // );

  // static const bodyText2 = baseTextTheme.bodyText2!.copyWith(
  //   color: primaryText,
  //   fontSize: 12,
  //   fontWeight: FontWeight.w400,
  // );

  // static const button = baseTextTheme.button!.copyWith(
  //   color: primaryText,
  //   fontSize: 12.0,
  //   fontWeight: FontWeight.w700,
  // );

  // static const caption = baseTextTheme.caption!.copyWith(
  //   color: primaryText,
  //   fontSize: 11.0,
  //   fontWeight: FontWeight.w300,
  // );

  // static const overline = baseTextTheme.overline!.copyWith(
  //   color: secondaryText,
  //   fontSize: 11.0,
  //   fontWeight: FontWeight.w500,
  // );

  // static const subtitle1 = baseTextTheme.subtitle1!.copyWith(
  //   color: primaryText,
  //   fontSize: 16.0,
  //   fontWeight: FontWeight.w700,
  // );

  // static const subtitle2 = baseTextTheme.subtitle2!.copyWith(
  //   color: secondaryText,
  //   fontSize: 11.0,
  //   fontWeight: FontWeight.w500,
  // );
}
