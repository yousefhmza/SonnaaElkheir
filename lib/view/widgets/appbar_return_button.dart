import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';

class AppBarReturnButton extends StatelessWidget {
  final Widget to;

  const AppBarReturnButton({
    Key? key,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateAndReplace(context, to);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
