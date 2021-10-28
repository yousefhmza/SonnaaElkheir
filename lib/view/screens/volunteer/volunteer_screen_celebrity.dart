import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_text_field.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class VolunteerScreenCelebrity extends StatelessWidget {
  VolunteerScreenCelebrity({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تطوع معنا للمشاهير",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: const HomeDrawer(),
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
                  children: [
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
                      label: "الرقم القومي",
                      hintText: "********************",
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "برجاء إدخال الرقم القومي بالكامل";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomTextField(
                      label: "رابط حساب فيسبوك",
                      hintText: "https://www.facebook.com/myprofile",
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "برجاء إدخال رابط حساب فيسبوك";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomTextField(
                      label: "رابط حساب انستجرام",
                      hintText: "https://www.instagram.com/myprofile",
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "برجاء إدخال رابط حساب فيسبوك";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomButton(
                      title: "تأكيد",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showToast(
                            "تم إرسال طلبك بالتطوع معنا بنجاح وسنقوم بالتواصل معك خلال 24 ساعة",
                            false,
                          );
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
    );
  }
}
