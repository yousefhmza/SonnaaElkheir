import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class EShopDetails extends StatelessWidget {
  const EShopDetails({Key? key}) : super(key: key);

  final String _about =
      ''' دأ جيريمى هودارا في عام 2012 وساشا بوينونيك المستشارين السابقين لدى McKinsey بتأسيس شركة Africa Internet Group المعروفة اليوم بجوميا.
تأسّست شركة جوميا في لاجوس عام 2012 وانتشرت بشكل سريع لتصل لخمس دول أفريقية أخرى وهي مصر، والمغرب، وساحل العاج، وكينيا، وجنوب أفريقيا.
وفي عام 2014 قامت جوميا بتأسيس مكاتبها في أوغندا، وتنزانيا، وغانا، والكاميرون، والجزائر، وتونس، لتنتشر في 14 دولة أفريقية سنة 2018.
وتمتلك شركة جوميا العديد من المنصات تتمثل في Jumia Travel وهي منصة إلكترونية لحجز الفنادق، و Jumia Food لطلب وتوصيل الطعام، كل منهما تأسس في يونيو 2013 بالإضافة إلى Jumia Deals التي تأسست في أبريل عام 2015، و في عام 2017 أطلقت جوميا تطبيق Jumia One  لتسهيل دفع الفواتير وخدمات الدفع الأخرى مثل تطبيق airtime، وقامت جوميا في العام نفسه، بإطلاق Jumia pay كمنصة آمنة للتسوق والدفع عبر كل خدمات جوميا، بالإضافة إلى نظام الاقتراض الذي أسسته جوميا الذي يسمح للبائعين بالحصول على القروض بسهولة، كما اشتركت جوميا مع شركة Amadeus technology لتأسيس منصة لحجز تذاكر الطيران.
ويُقدر نمو جوميا في عام 2015 بنسبة 265% مقارنة بعام 2014 بإيرادات تصل إلى 234 مليون دولار، وأصبحت جوميا في عام 2016 الشركة اليونيكورن رقم واحد في قارة أفريقيا بقيمة تزيد عن مليار دولار أمريكي، وفي أواخر نوفمبر عام 2018 اشتركت مع شركة العملات المشفرة Telcoin لتسهيل خدمات الدفع عبر مناطق التشغيل، وفي نفس الشهر جوميا وكارفور تعقدان اتفاقية شراكة لبيع منتجاتها إلكترونيا على الصعيد الأفريقي.''';

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("جوميا"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.3,
              child: Stack(
                children: [
                  SizedBox(
                    height: deviceHeight * 0.23,
                    child: Image.asset(
                      "assets/images/support case 2.jpg",
                      height: deviceHeight * 0.23,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 62.0.r,
                      backgroundColor: canvasColor,
                      child: CircleAvatar(
                        radius: 56.0.r,
                        backgroundColor: canvasColor,
                        backgroundImage:
                            const AssetImage("assets/images/jumia.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(
                    text: "عن جوميا",
                    fontSize: 18.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(text: _about, fontSize: 16.0.sp),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomButton(
                    title: "الحصول علي الكود الخاص بك",
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
