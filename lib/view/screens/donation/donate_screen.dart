import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/screens/donation/beneficiary_data_screen.dart';
import 'package:sonnaa/view/screens/donation/org_donation_screen.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تبرع",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "جهة التبرع ",
                fontSize: 20.0.sp,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: deviceHeight * 0.02),
              CustomText(
                text: "اختر الجهة التي ترغب في التبرع لها",
                fontSize: 18.0.sp,
              ),
              SizedBox(height: deviceHeight * 0.02),
              CustomButton(
                title: "تبرع موجه",
                onPressed: () {
                  navigateAndReplace(context, BeneficiaryDataScreen());
                },
              ),
              SizedBox(height: deviceHeight * 0.02),
              CustomButtonOutlined(
                title: "تبرع لمؤسسة صناع الخير و أقسامها",
                onPressed: () {
                  navigateAndReplace(context, OrgDonationScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
