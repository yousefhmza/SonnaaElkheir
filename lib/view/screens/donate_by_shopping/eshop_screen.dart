import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/models/eshop_model.dart';
import 'package:sonnaa/view/screens/donate_by_shopping/eshop_details.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class EShopScreen extends StatelessWidget {
  EShopScreen({Key? key}) : super(key: key);

  final List<EShopModel> _eshops = [
    EShopModel(
      image: "assets/images/amazon.png",
      donationPercent: "3",
    ),
    EShopModel(
      image: "assets/images/souq.png",
      donationPercent: "4",
    ),
    EShopModel(
      image: "assets/images/jumia.png",
      donationPercent: "2.5",
    ),
    EShopModel(
      image: "assets/images/souq.png",
      donationPercent: "1",
    ),
    EShopModel(
      image: "assets/images/raya.png",
      donationPercent: "0.5",
    ),
    EShopModel(
      image: "assets/images/jumia.png",
      donationPercent: "2.5",
    ),
    EShopModel(
      image: "assets/images/raya.png",
      donationPercent: "2",
    ),
    EShopModel(
      image: "assets/images/amazon.png",
      donationPercent: "3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("تبرع من خلال التسوق"),
      ),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: GridView.builder(
          itemCount: _eshops.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              navigateTo(context, EShopDetails());
            },
            child: EShopItem(_eshops[index]),
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1,
            maxCrossAxisExtent: deviceWidth * 0.5,
            crossAxisSpacing: 8.0.w,
            mainAxisSpacing: 8.0.h,
          ),
        ),
      ),
    );
  }
}

class EShopItem extends StatelessWidget {
  final EShopModel eShopItem;

  const EShopItem(
    this.eShopItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0.r),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0.r),
            child: Image.asset(
              eShopItem.image,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: deviceHeight * 0.02,
            child: Container(
              color: Colors.black45,
              height: deviceHeight * 0.04,
              width: deviceWidth * 0.45,
              alignment: Alignment.center,
              child: CustomText(
                text: "Up To 3% Donation",
                fontSize: 14.0.sp,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
