import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class CustomButtonOutlined extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const CustomButtonOutlined({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;

    return MaterialButton(
      onPressed: onPressed,
      height: deviceHeight * 0.06,
      minWidth: double.infinity,
      highlightElevation: 0.0,
      shape: Border.all(
        color: primaryColor,
      ),
      color: canvasColor,
      elevation: 0.0,
      child: CustomText(
        text: title,
        fontSize: 14.0.sp,
        color: Colors.black,
      ),
    );
  }
}
