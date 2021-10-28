import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

  final String _details =
      '''بدأت مؤسسة صناع الخير للتنمية وتحت إشراف وزارة التضامن الإجتماعى وبالتعاون مع السادة المحافظين وبالشراكة مع عدد كبير من المؤسسات الإقتصادية الكبرى الداعمة بدأت فى تعبئة كراتين رمضان بهدف توزيع 150 طن مواد غذائية على الأسر غير القادرة فى أنحاء الجمهورية مع حلول شهر رمضان المعظم.
وأكد هانى عبدالفتاح المدير التنفيذى لصناع الخير أن المؤسسة إعتمدت خطة عمل طموحة بدأت بإختيار أجود المواد الغذائية وأكثرها أهمية للشرائح المستهدفة وتعبئتها بما يضمن وصولها لمستهلكها فى أفضل صورة ، يلى ذلك إنطلاق فريق عمل صناع الخير المنتشر فى المحافظات المختلفة للبدء فى التوزيع إعتماداً على قاعة البيانات الكبيرة التى تمتلكها صناع الخير والتى تتضمن الأسر الأكثر إستحقاقاً فى نطاقات الجمهورية وبخاصة فى قرى الصعيد الأشد إحتياج وفى المناطق الحدودية وسكان الوديان والتجمعات البدوية.
وأشار عبدالفتاح إلى أن فريق عمل صناع الخير فى خطوات تنفيذه لخطة عمل توزيع كراتين رمضان ينسق بشكل كامل مع الجهات المعنية والسادة المحافظين ومديريات التضامن الإجتماعى بالمحافظات وعدد كبير من الجمعيات الأهلية الصغيرة فى القرى والنجوع وعدد كبير من الشباب المتطوعين بما يمكن المؤسسة من الوصول بكرتونة المواد الغذائية إلى الأسرة الأكثر استحقاقاً فى منزلها بما يحفظ كرامتها ويضمن الوصول إلى كل الأسر الأكثر إستحقاقاً وأن كل تلك الخطوات تتم وفقاً لإجراءات الحماية والوقاية والتباعد المتعبة بتوجيهات وزارة الصحة المصرية ومنظمة الصحة العالمية للوقاية من إنتشار فيروس كرورنا.
وأضاف عبدالفتاح أن كرتونة المواد الغذائية من صناع الخير تحوى الواحدة منها 15 كيلو مواد غذائية تشمل الأرز والسكر والزيت والسمن وبقوليات وشاي بما يكفى أسرة مكونة من خمسة أفراد لأسبوع كامل.
يذكر أن صناع الخير بدأت فى تنفيذ نشاط توزيع كراتين المواد الغذائية على الأسر الأكثر إستحقاقاً فى القرى الأشد إحتياجاً وسكان اللأودية والمناطق الحدودية قبل عامين من الأن وتعاونت مع عدد كبير من المؤسسات والجهات من بينها صندوق تحيا مصر ومؤسسة حياة كريمة والمصرف المتحد ومؤسسة ساويرس للتنمية وبنك القاهرة وبيت الزكاة الكويتى وأن المواد الغذائية التى تم توزيعها تنوعت بين كرتونة مواد غذائية متكاملة ودواجن مجمدة ولحوم مجمدة.''';

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("تفاصيل الخبر"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              "assets/images/press.jpeg",
              height: deviceHeight * 0.25,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text:
                        "تستهدف توزيع 150طن مواد غذائية مع حلول الشهر الكريم بالصور .. صناع الخير تبدء فى تعبئة كراتين رمضان",
                    fontSize: 18.0.sp,
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  CustomText(
                    text: "10/12/2020",
                    fontSize: 14.0.sp,
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  CustomText(
                    text: "تحرير بواسطة محرري صناع الخير",
                    fontSize: 12.0.sp,
                    color: primaryColor,
                  ),
                  SizedBox(height: deviceHeight * 0.01),
                  CustomText(
                    text: _details,
                    fontSize: 16.0.sp,
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
