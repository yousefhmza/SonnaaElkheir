import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class CaseDetailsScreen extends StatelessWidget {
  const CaseDetailsScreen({Key? key}) : super(key: key);

  final String _details =
      ''' تأسست مؤسسة مجدي يعقوب لأمراض وأبحاث القلب –منظمة خيرية غير حكومية مسجلة في مصر- عام 2008 من قبل الدكتور مجدي يعقوب، والراحل الدكتور أحمد زويل والراحل السفير محمد شاكر. تدير مؤسسة مجدي يعقوب لأبحاث القلب أحد المشروعات الاستثنائية ذات الأهمية الكبيرة لصحة ورفاهية الشعب المصري، والذي يعتمد بالكامل على التبرعات وهو مركز أسوان للقلب.
تعد مؤسسة مجدي يعقوب لأمراض وأبحاث القلب المسؤولة عن الإدارة الاستراتيجية لمركز أسوان للقلب، ونظرا للضغط القائم على مركز أسوان للقلب، اتخذ مجلس الأمناء قرارا مستنيرا بالبدء في إنشاء مركز مجدي يعقوب العالمي للقلب– القاهرة، وذلك لتلبية الاحتياج الشديد والمتزايد على علاج الأمراض القلبية وخصوصا الفئات الأكثر احتياجا إلى العلاج، وذلك من خلال تحقيق التكامل بين العلاج والبحوث وتنمية المهارات بشكل مستمر. كما أن المؤسسة تدار من قِبَل أحد أكثر مجالس الأمناء شهرة في مصر.
''';

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("تفاصيل الحالة"),//skdsh
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              "assets/images/support case 2.jpg",
              height: deviceHeight * 0.25,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: deviceHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0.r),
                        ),
                        elevation: 4.0.h,
                        child: CircleAvatar(
                          radius: 32.0.r,
                          backgroundImage:
                              const AssetImage("assets/images/myo.png"),
                        ),
                      ),
                      SizedBox(width: deviceWidth * 0.02),
                      CustomText(
                        text: "منظمة مجدي يعقوب",
                        fontSize: 16.0.sp,
                      ),
                    ],
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
                          text: "20,532 ج.م ",
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
                          text: "100,000 ج.م",
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
                  SizedBox(height: deviceHeight * 0.02),
                  LinearPercentIndicator(
                    backgroundColor: Colors.grey.shade300,
                    progressColor: primaryColor,
                    lineHeight: 10.0.h,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    percent: 50 / 100,
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(
                    text: "قام 732 شخص بالتبرع",
                    fontSize: 14.0.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(
                    text: "عن الحالة",
                    fontSize: 16.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(
                    text: _details,
                    fontSize: 14.0.sp,
                    color: Colors.black,
                  ),
                  CustomButton(
                    title: "تبرع",
                    onPressed: () {},
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
