import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/custom_text_field.dart';

class CalculateZakahScreen extends StatefulWidget {
  const CalculateZakahScreen({Key? key}) : super(key: key);

  @override
  State<CalculateZakahScreen> createState() => _CalculateZakahScreenState();
}

class _CalculateZakahScreenState extends State<CalculateZakahScreen> {
  int zakahValue = 0;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("حساب الزكاة"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      label: "زكاة المال",
                      hintText: "ما هو قيمة المال الذي تملكه؟",
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomTextField(
                      label: "زكاة الأصول و الممتلكات",
                      hintText: "ما هي قيمة الأسهم التي تمتلكها في السوق؟",
                    ),
                    CustomTextField(
                      label: "",
                      hintText: "ما هي قيمة الأرباح التي تحصل عليها؟",
                    ),
                    CustomTextField(
                      label: "",
                      hintText: "ما هي قيمة السندات التي تمتلكها في السوق؟",
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomTextField(
                      label: "زكاة الذهب",
                      hintText: "أدخل قيمة الذهب الحالية بالجرام",
                    ),
                    CustomTextField(
                      label: "",
                      hintText: "ماهو وزن الذهب الذي تمتلكه؟",
                    ),
                    SizedBox(height: deviceHeight * 0.03),
                    CustomTextField(
                      label: "زكاة العقارات المملوكة",
                      hintText: "ما هو قيمة الإيجار الشهري للعقار الذي تمتلكه؟",
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                CustomText(
                  text: "القيمه المستحقة للزكاه هي",
                  fontSize: 16.0.sp,
                ),
                SizedBox(height: deviceHeight * 0.02),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth * 0.45,
                      child: CustomButton(
                        title: "تبرع",
                        onPressed: () {},
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: deviceWidth * 0.45,
                      child:  CustomButtonOutlined(
                        onPressed: null,
                        title: "$zakahValue ج.م",
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
