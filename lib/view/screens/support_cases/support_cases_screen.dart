import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/components.dart';

import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/models/support_case_model.dart';
import 'package:sonnaa/view/screens/support_cases/case_details_screen.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class SupportCasesScreen extends StatelessWidget {
  SupportCasesScreen({Key? key}) : super(key: key);

  final List<SupportCaseModel> _cases = [
    SupportCaseModel(
      image: "assets/images/support case 2.jpg",
      title:
          "جمع تبرعات لعملية قلب مفتوح لطفل عمرة سبع سنوات يعاني من نزيف في القلب ويحتاج إلي عمليه في أسرع وقت",
      desc:
          "بعض التفاصيل السريعة عن الحالة بعرضها بشكل دقيق علي المختصين و مراجعة التفاصيل",
      collected: "015,160,018 ج.م ",
      total: "015,160,018 ج.م",
    ),
    SupportCaseModel(
      image: "assets/images/support case 1.jpeg",
      title: "جمع تبرعات لترميم دار أيتام في القاهرة",
      desc: "بعض التفاصيل السريعة عن الحالة",
      collected: "20,532 ج.م ",
      total: "100,000 ج.م",
    ),
    SupportCaseModel(
      image: "assets/images/support case 2.jpg",
      title: "جمع تبرعات لتوفير كساء ل 100 أسرة فقيرة",
      desc: "بعض التفاصيل السريعة عن الحالة",
      collected: "16,018 ج.م ",
      total: "45,000 ج.م",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("دعم الحالات"),
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: deviceHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                children: [
                  CustomText(
                    text: "جمع التبرعات الخيرية",
                    fontSize: 18.0.sp,
                  ),
                  const Spacer(),
                  CustomText(
                    text: "مشاهدة الكل",
                    fontSize: 12.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 8.0.w),
              child: SizedBox(
                height: deviceHeight * 0.58,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _cases.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      SizedBox(width: deviceWidth * 0.03),
                  itemBuilder: (context, index) => Align(
                    alignment: AlignmentDirectional.topStart,
                    child: SupportCaseItem(
                      image: _cases[index].image,
                      title: _cases[index].title,
                      desc: _cases[index].desc,
                      collected: _cases[index].collected,
                      total: _cases[index].total,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: deviceHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                children: [
                  CustomText(
                    text: "الحالات الشائعة",
                    fontSize: 18.0.sp,
                  ),
                  const Spacer(),
                  CustomText(
                    text: "مشاهدة الكل",
                    fontSize: 12.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 8.0.w),
              child: SizedBox(
                height: deviceHeight * 0.58,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _cases.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      SizedBox(width: deviceWidth * 0.03),
                  itemBuilder: (context, index) => Align(
                    alignment: AlignmentDirectional.topStart,
                    child: SupportCaseItem(
                      image: _cases[index].image,
                      title: _cases[index].title,
                      desc: _cases[index].desc,
                      collected: _cases[index].collected,
                      total: _cases[index].total,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SupportCaseItem extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final String collected;
  final String total;

  const SupportCaseItem({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
    required this.collected,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 4.0.h,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0.r),
      ),
      child: SizedBox(
        width: deviceWidth * 0.8,
        height: deviceHeight * 0.56,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.0.r),
                topLeft: Radius.circular(16.0.r),
              ),
              child: Image.asset(
                image,
                height: deviceHeight * 0.25,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: deviceHeight * 0.02),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: title,
                      fontSize: 16.0.sp,
                      maxLines: 2,
                    ),
                    SizedBox(height: deviceHeight * 0.02),
                    CustomText(
                      text: desc,
                      fontSize: 14.0.sp,
                      color: Colors.grey,
                      maxLines: 2,
                    ),
                    SizedBox(height: deviceHeight * 0.02),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "تم جمع ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "regular",
                              fontSize: 16.0.sp,
                            ),
                          ),
                          TextSpan(
                            text: collected,
                            style: TextStyle(
                              color: primaryColor,
                              fontFamily: "regular",
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0.sp,
                            ),
                          ),
                          TextSpan(
                            text: "من إجمالي ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "regular",
                              fontSize: 16.0.sp,
                            ),
                          ),
                          TextSpan(
                            text: total,
                            style: TextStyle(
                              color: primaryColor,
                              fontFamily: "regular",
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0.sp,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: CustomButtonOutlined(
                title: "تفاصيل الحالة",
                color: Colors.white,
                onPressed: () {
                  navigateTo(context, CaseDetailsScreen());
                },
              ),
            ),
            SizedBox(height: deviceHeight * 0.01),
          ],
        ),
      ),
    );
  }
}
