import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_button_outlined.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class InitiativeDetailsScreen extends StatelessWidget {
  const InitiativeDetailsScreen({Key? key}) : super(key: key);

  final String _initiativeDetails =
      ''' تبنت مؤسسة صناع الخير للتنمية مبادرة تعد الرائدة في تاريخ مصر لعلاج مسببات العمى، وإجراء عمليات جراحية وتسليم نظارات طبية بالمجان تمامًا. ونجحت المبادرة في علاج أكثر من 180 ألف مواطن منذ انطلاق المبادرة في الأول من فبراير حتى الآن، عدد كبير منهم من كبار السن الذين كانوا مهددين بفقدان النظر الكلي، وذلك برعاية رئاسة مجلس الوزراء، وشركة أوركيديا للصناعات الدوائية.
وكان لمؤسسة صناع الخير للتنمية السبق في الكشف وعلاج العمالة غير المنتظمة بالمشروعات التنموية، وكذلك الكشف وعلاج أهالينا في المناطق الحدودية في أماكنهم بالمجان، حيث تم الكشف على 5 آلاف مواطن من أهالي حلايب وشلاتين ضمن مبادرة "عنيك في عنينا" وإجراء جراحات مختلفة لـ200 منهم، وتوزيع أدوية ونظارات على 2800 مواطن منهم، برعاية الشركة المصرية للاتصالات.
كما نجحت مؤسسة صناع الخير للتنمية " في إجراء 200 عملية قرنية حتى الآن، وتصل تكلفة العملية الواحدة من 25 ألف إلى 30 ألف جنيهًا، بالتعاون مع مؤسسة أبو العينين للأعمال الخيرية، وبيت الزكاة والصدقات المصري، ومعهد الرمد التذكاري، إضافة إلى إجراء 14800 عملية جراحة عيون مختلفة لغير القادرين في قرى مصر برعاية شركة أوركيديا.
ووزعت مؤسسة صناع الخير للتنيمة 60 ألف نظارة طبية عالية الجودة على الحالات المستحقة ضمن مبادرة "عنيك تبنت مؤسسة صناع الخير للتنمية مبادرة تعد الرائدة في تاريخ مصر لعلاج مسببات العمى، وإجراء عمليات جراحية وتسليم نظارات طبية بالمجان تمامًا. ونجحت المبادرة في علاج أكثر من 180 ألف مواطن منذ انطلاق المبادرة في الأول من فبراير حتى الآن، عدد كبير منهم من كبار السن الذين كانوا مهددين بفقدان النظر الكلي، وذلك برعاية رئاسة مجلس الوزراء، وشركة أوركيديا للصناعات الدوائية.
وكان لمؤسسة صناع الخير للتنمية السبق في الكشف وعلاج العمالة غير المنتظمة بالمشروعات التنموية، وكذلك الكشف وعلاج أهالينا في المناطق الحدودية في أماكنهم بالمجان، حيث تم الكشف على 5 آلاف مواطن من أهالي حلايب وشلاتين ضمن مبادرة "عنيك في عنينا" وإجراء جراحات مختلفة لـ200 منهم، وتوزيع أدوية ونظارات على 2800 مواطن منهم، برعاية الشركة المصرية للاتصالات.
كما نجحت مؤسسة صناع الخير للتنمية " في إجراء 200 عملية قرنية حتى الآن، وتصل تكلفة العملية الواحدة من 25 ألف إلى 30 ألف جنيهًا، بالتعاون مع مؤسسة أبو العينين للأعمال الخيرية، وبيت الزكاة والصدقات المصري، ومعهد الرمد التذكاري، إضافة إلى إجراء 14800 عملية جراحة عيون مختلفة لغير القادرين في قرى مصر برعاية شركة أوركيديا.
ووزعت مؤسسة صناع الخير للتنيمة 60 ألف نظارة طبية عالية الجودة على الحالات المستحقة ضمن مبادرة "عنيك ''';

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "مبادرة عنيك عنينا",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: deviceHeight * 0.27,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: deviceHeight * 0.23,
                        child: Image.asset(
                          "assets/images/initiative image.jpg",
                          height: deviceHeight * 0.23,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: deviceWidth * 0.04,
                        child: CircleAvatar(
                          radius: 32.0.r,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              const AssetImage("assets/images/3inak 3nina.png"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: deviceHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: CustomText(
                    text: "مبادرة عنيك عنينا",
                    fontSize: 20.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: SingleChildScrollView(
                      child: CustomText(
                        text: _initiativeDetails,
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: CustomText(
                    text: "منظمين المبادرة",
                    fontSize: 20.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Coordinator(),
                    Coordinator(),
                    Coordinator(),
                    Coordinator(),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: deviceHeight * 0.06,
                  width: deviceWidth * 0.45,
                  child: CustomButton(
                    title: "تطوع",
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.06,
                  width: deviceWidth * 0.45,
                  child: CustomButtonOutlined(
                    title: "طلب المساعدة",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Coordinator extends StatelessWidget {
  const Coordinator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
        ),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 32.0.r,
        backgroundImage: const AssetImage("assets/images/magdy yaqoub.png"),
      ),
    );
  }
}
