import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';

import 'package:sonnaa/view/screens/donation/donate_screen.dart';
import 'package:sonnaa/view/screens/donation/payment_method_screen.dart';
import 'package:sonnaa/view/widgets/appbar_return_button.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/custom_text_field.dart';

class OrgDonationScreen extends StatelessWidget {
  OrgDonationScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تبرع للمؤسسة",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          AppBarReturnButton(to: DonateScreen()),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "بيانات التبرع",
                  fontSize: 20.0.sp,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: deviceHeight * 0.03),
                CustomText(
                  text: "أدخل المبلغ والقسم الذي ترغب في التبرع له",
                  fontSize: 18.0.sp,
                ),
                SizedBox(height: deviceHeight * 0.03),
                CustomTextField(
                  label: "المبلغ",
                  hintText: "100",
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "برجاء إدخال المبلغ الذي ستتبرع به";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: deviceHeight * 0.03),
                DropdownButtonFormField(
                  value: 0,
                  onChanged: (index) {},
                  items: [
                    DropdownMenuItem(
                      value: 0,
                      child: CustomText(text: "للمؤسسة", fontSize: 16.0.sp),
                    ),
                    DropdownMenuItem(
                      value: 1,
                      child:
                          CustomText(text: "القوافل الطبية", fontSize: 16.0.sp),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: CustomText(text: "الغارمات", fontSize: 16.0.sp),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: CustomText(text: "دعم الحالات", fontSize: 16.0.sp),
                    ),
                  ],
                ),
                const Spacer(),
                CustomButton(
                  title: "استمرار",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      navigateAndReplace(context, PaymentMethodScreen());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
