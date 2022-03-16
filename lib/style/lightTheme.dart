//Here we Build light Theme
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

ThemeData lightTheme(context) {
  return ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ).apply(bodyColor: mainColor),
    primarySwatch: Colors.teal,
    primaryColor: mainColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      toolbarHeight: 0,
      systemOverlayStyle:  SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white),
      iconTheme: IconThemeData(
        color: mainColor,
      ),
      color: Colors.white,
      elevation: 0,

    ),

  );
}