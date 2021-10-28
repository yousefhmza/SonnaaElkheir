import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/constants.dart';

AppBarTheme _appBarTheme = AppBarTheme(
  elevation: 0.0,
  color: canvasColor,
  centerTitle: true,
  titleTextStyle: TextStyle(
    color: Colors.black,
    fontSize: 18.0.sp,
    height: 2.0.h,
    fontFamily: "regular",
    fontWeight: FontWeight.bold,
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
    size: 28.0.sp,
  ),
  systemOverlayStyle: const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ),
);

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: _appBarTheme,
    primaryColor: primaryColor,
    canvasColor: canvasColor,
  );
}
