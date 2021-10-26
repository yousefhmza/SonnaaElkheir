import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

void navigateTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => screen,
    ),
  );
}

void navigateAndReplace(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => screen,
    ),
  );
}

void showToast(String msg, bool error) {
  Fluttertoast.showToast(
    msg: msg,
    fontSize: 16.0.sp,
    backgroundColor: error ? Colors.red : Colors.grey,
    textColor: error ? Colors.white : Colors.black,
    timeInSecForIosWeb: 3,
  );
}
