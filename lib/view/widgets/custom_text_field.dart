import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool readOnly;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? textEditingController;

  CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.textEditingController,
    this.keyboardType = TextInputType.text,
    this.onFieldSubmitted,
    this.readOnly = false,
    this.onSaved,
    this.onTap,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          fontSize: 14.0.sp,
        ),
        TextFormField(
          controller: textEditingController,
          validator: validator,
          onSaved: onSaved,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          keyboardType: keyboardType,
          cursorColor: primaryColor,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14.0.sp,
              fontFamily: "regular",
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
