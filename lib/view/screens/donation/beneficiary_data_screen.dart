import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/screens/donation/contributer_data_screen.dart';
import 'package:sonnaa/view/screens/donation/donate_screen.dart';
import 'package:sonnaa/view/screens/donation/payment_method_screen.dart';
import 'package:sonnaa/view/widgets/appbar_return_button.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/custom_text_field.dart';

class BeneficiaryDataScreen extends StatelessWidget {
  BeneficiaryDataScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        navigateAndReplace(context, const DonateScreen());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "تبرع موجه",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            AppBarReturnButton(to: DonateScreen()),
          ],
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(_focusNode);
          },
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "بيانات المتبرع إليه",
                        fontSize: 20.0.sp,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomText(
                        text:
                            "أدخل بيانات الشخص أو المؤسسة التي ترغب في إرسال تبرعك إليها",
                        fontSize: 18.0.sp,
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomTextField(
                        label: "الأسم الرباعي",
                        hintText: "محمود علاء عبدالله محمد",
                        keyboardType: TextInputType.name,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "برجاء إدخال الأسم الرباعي كاملا";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomTextField(
                        label: "البريد الألكتروني (اختياري)",
                        hintText: "Sonnaael5eir@gmail.com",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomTextField(
                        label: "رقم الحساب البنكي (اختياري)",
                        hintText: "****************",
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomTextField(
                        label: "العنوان",
                        hintText: "رقم المكان, الشارع, المدينة, المحافظة",
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "برجاء إدخال العنوان الصحيح بالكامل";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: deviceHeight * 0.03),
                      CustomTextField(
                        label: "رقم الهاتف",
                        hintText: "01065874123",
                        keyboardType: TextInputType.number,
                        validator: (String? value) {
                          if (value!.isEmpty || value.length != 11) {
                            return "برجاء إدخال رقم الهاتف الصحيح بالكامل";
                          } else {
                            return null;
                          }
                        },
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
                      CustomButton(
                        title: "دفع الكتروني",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            navigateAndReplace(context, PaymentMethodScreen());
                          }
                        },
                      ),
                      SizedBox(height: deviceHeight * 0.01),
                      CustomButtonOutlined(
                        title: "إرسال مندوب",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            navigateAndReplace(
                                context, ContributorDataScreen());
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
