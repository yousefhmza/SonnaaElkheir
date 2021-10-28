import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/view/screens/press_center/news_details_screen.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("مركز الأخبار"),
      ),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Center(
          child: ListView.separated(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) =>
                SizedBox(height: deviceHeight * 0.02),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                navigateTo(context, NewsDetailsScreen());
              },
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        "assets/images/press.jpeg",
                        height: deviceHeight * 0.2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: deviceHeight * 0.2,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black87,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 4.0.w),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/youm7.jpg",
                              height: 20.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            CustomText(
                              text: "24/12/2020",
                              fontSize: 12.0.sp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  CustomText(
                    text:
                        "تستهدف توزيع 150 طن مواد غذائية مع حلول الشهر الكريم بالصور .. صناع الخير تبدء فى تعبئة كراتين رمضان",
                    fontSize: 16.0.sp,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
