import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/screens/donation/donate_screen.dart';
import 'package:sonnaa/view/screens/initiatives/initiatives_screen.dart';
import 'package:sonnaa/view/screens/medical_services_screen.dart';
import 'package:sonnaa/view/screens/press_center/news_details_screen.dart';
import 'package:sonnaa/view/screens/press_center/news_screen.dart';
import 'package:sonnaa/view/screens/support_cases/support_cases_screen.dart';
import 'package:sonnaa/view/screens/volunteer/volunteer_screen.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppLocalizations loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loc.sonnaaElkheir,
          style: const TextStyle(
            color: primaryColor,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              navigateAndReplace(context, const DonateScreen());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: const Icon(Icons.monetization_on_rounded),
            ),
          )
        ],
      ),
      body: HomeBody(),
      drawer: const HomeDrawer(),
    );
  }
}

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);

  final Map<String, List<dynamic>> _sliderImages = {
    "images": [
      "assets/images/initiatives.jpg",
      "assets/images/support cases.jpg",
      "assets/images/volunteer.jpg",
    ],
    "screens": [
      InitiativesScreen(),
      SupportCasesScreen(),
      VolunteerScreen(),
    ],
  };

  final List<Map<String, dynamic>> _initiativesList = [
    {
      "image": "assets/images/3inak 3nina.png",
      "title": "مبادرة عينك عنينا",
      "Screen": InitiativesScreen(),
    },
    {
      "image": "assets/images/farhah.png",
      "title": "مبادرة فرحة",
      "Screen": InitiativesScreen(),
    },
    {
      "image": "assets/images/health food.png",
      "title": "مبادرة قدم صجيج",
      "Screen": InitiativesScreen(),
    },
    {
      "image": "assets/images/3inak 3nina.png",
      "title": "مبادرة عينك عنينا",
      "Screen": InitiativesScreen(),
    },
    {
      "image": "assets/images/farhah.png",
      "title": "مبادرة فرحة ",
      "Screen": InitiativesScreen(),
    },
    {
      "image": "assets/images/health food.png",
      "title": "مبادرة قدم صجيج",
      "Screen": InitiativesScreen(),
    },
  ];

  final List<Map<String, dynamic>> _medicalServices = [
    {
      "name": "القوافل",
      "icon": Icons.medical_services,
      "screen": MedicalServicesScreen(),
    },
    {
      "name": "المستشفيات",
      "icon": Icons.local_hospital_outlined,
      "screen": MedicalServicesScreen(),
    },
    {
      "name": "الأدوية",
      "icon": Icons.medical_services_outlined,
      "screen": MedicalServicesScreen(),
    },
    {
      "name": "القوافل",
      "icon": Icons.medical_services,
      "screen": MedicalServicesScreen(),
    },
    {
      "name": "المستشفيات",
      "icon": Icons.local_hospital_outlined,
      "screen": MedicalServicesScreen(),
    },
    {
      "name": "الأدوية",
      "icon": Icons.medical_services_outlined,
      "screen": MedicalServicesScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: _sliderImages["images"]!.length,
            itemBuilder: (context, index, pageViewIndex) => InkWell(
              onTap: () {
                navigateAndReplace(context, _sliderImages["screens"]![index]);
              },
              child: Image.asset(_sliderImages["images"]![index]),
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              children: [
                CustomText(
                  text: "المبادرات",
                  fontSize: 20.0.sp,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    navigateAndReplace(context, InitiativesScreen());
                  },
                  child: CustomText(
                    text: "مشاهدة الكل",
                    fontSize: 12.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: deviceHeight * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: SizedBox(
              height: deviceHeight * 0.17,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    InitiativesItem(_initiativesList[index]),
                separatorBuilder: (context, index) =>
                    SizedBox(width: deviceWidth * 0.05),
                itemCount: _initiativesList.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              children: [
                CustomText(
                  text: "مركز الأخبار",
                  fontSize: 20.0.sp,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    navigateAndReplace(context, NewsScreen());
                  },
                  child: CustomText(
                    text: "مشاهدة الكل",
                    fontSize: 12.0.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: deviceHeight * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: InkWell(
              onTap: () {
                navigateTo(context, NewsDetailsScreen());
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/press.jpeg",
                    fit: BoxFit.cover,
                    height: 160,
                    width: double.infinity,
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  CustomText(
                    text:
                    "تستهدف توزيع 150طن مواد غذائية مع حلول الشهر الكريم بالصور .. صناع الخير تبدء فى تعبئة كراتين رمضان",
                    fontSize: 16.0.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              children: [
                CustomText(
                  text: "الخدمات الطبية",
                  fontSize: 20.0.sp,
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
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: SizedBox(
              height: 100.0,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    MedicalServicesItem(_medicalServices[index]),
                separatorBuilder: (context, index) =>
                    SizedBox(width: deviceWidth * 0.05),
                itemCount: _medicalServices.length,
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.02),
        ],
      ),
    );
  }
}

class InitiativesItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const InitiativesItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => item["Screen"],
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: Image.asset(
              item["image"],
              height: deviceHeight * 0.13,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: deviceHeight * 0.01),
          CustomText(
            text: item["title"],
            fontSize: 12.0.sp,
          )
        ],
      ),
    );
  }
}

class MedicalServicesItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const MedicalServicesItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      height: deviceHeight * 0.13,
      width: deviceWidth * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 2.0.w,
        ),
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item["icon"]),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: CustomText(
                text: item["name"],
                fontSize: 12.0.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
