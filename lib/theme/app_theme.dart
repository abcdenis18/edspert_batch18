import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/colors_helper.dart';

final appLightTheme = ThemeData(
  primaryColor: appPrimaryColor,
  scaffoldBackgroundColor: appBackgroundColor,
  textTheme: GoogleFonts.poppinsTextTheme(),
  primarySwatch: generateMaterialColor(appPrimaryColor),
);
