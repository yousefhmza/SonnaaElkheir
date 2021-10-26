import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/view/screens/initiatives/initiative_details_screen.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class InitiativesScreen extends StatelessWidget {
  InitiativesScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> _initiativeItem = [
    {"title": "عنيك عنينا", "image": "assets/images/3inak 3nina.png"},
    {"title": "قرحة", "image": "assets/images/farhah.png"},
    {"title": "قدم صحيح", "image": "assets/images/health food.png"},
    {"title": "عنيك عنينا", "image": "assets/images/3inak 3nina.png"},
    {"title": "قرحة", "image": "assets/images/farhah.png"},
    {"title": "قدم صحيح", "image": "assets/images/health food.png"},
    {"title": "عنيك عنينا", "image": "assets/images/3inak 3nina.png"},
    {"title": "قرحة", "image": "assets/images/farhah.png"},
    {"title": "قدم صحيح", "image": "assets/images/health food.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("المبادرات"),
      ),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: GridView.builder(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              navigateTo(context, const InitiativeDetailsScreen());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0.r),
              ),
              child: Card(
                elevation: 4.0,
                child: Image.asset(_initiativeItem[index]["image"]!),
              ),
            ),
          ),
          itemCount: _initiativeItem.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: deviceWidth * 0.3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 8.0.w,
            mainAxisSpacing: 8.0.h,
          ),
        ),
      ),
    );
  }
}
