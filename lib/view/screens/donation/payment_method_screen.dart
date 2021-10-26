import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/view/screens/donation/donate_screen.dart';
import 'package:sonnaa/view/widgets/appbar_return_button.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "وسيلة التبرع",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [AppBarReturnButton(to: DonateScreen())],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              elevation: 4.0.h,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0.r),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/images/paypal.png",
                      height: 30.0.h,
                    ),
                    title: CustomText(
                      text: "PayPal",
                      fontSize: 16.0.sp,
                    ),
                  ),
                  Divider(
                    endIndent: 16.0.w,
                    color: Colors.black38,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/visa.png",
                      height: 30.0.h,
                      width: 40.0.w,
                    ),
                    title: CustomText(
                      text: "VISA",
                      fontSize: 16.0.sp,
                    ),
                  ),
                  Divider(
                    endIndent: 16.0.w,
                    color: Colors.black38,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/Gpay.png",
                      height: 30.0.h,
                      width: 40.0.w,
                    ),
                    title: CustomText(
                      text: "Google Pay",
                      fontSize: 16.0.sp,
                    ),
                  ),
                  Divider(
                    endIndent: 16.0.w,
                    color: Colors.black38,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/Apay.png",
                      height: 30.0.h,
                      width: 40.0.w,
                    ),
                    title: CustomText(
                      text: "Apple Pay",
                      fontSize: 16.0.sp,
                    ),
                  ),
                  Divider(
                    endIndent: 16.0.w,
                    color: Colors.black38,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/fawry.png",
                      height: 30.0.h,
                      width: 40.0.w,
                    ),
                    title: CustomText(
                      text: "Fawry",
                      fontSize: 16.0.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.03),
            Row(
              children: [
                CustomText(
                  text: "المبلغ",
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                SizedBox(
                  width: deviceWidth * 0.25,
                  child: const CustomButtonOutlined(
                    title: "100 ج.م",
                    onPressed: null,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              title: "استمرار",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
