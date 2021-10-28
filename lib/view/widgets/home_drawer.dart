import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/models/drawer_item_model.dart';
import 'package:sonnaa/view/screens/donation/donate_screen.dart';
import 'package:sonnaa/view/screens/home_screen.dart';
import 'package:sonnaa/view/screens/initiatives/initiatives_screen.dart';
import 'package:sonnaa/view/screens/support_cases/support_cases_screen.dart';
import 'package:sonnaa/view/screens/volunteer/volunteer_screen.dart';
import 'package:sonnaa/view/screens/volunteer/volunteer_screen_celebrity.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DrawerItemModel> _drawerItems = [
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, const HomeScreen());
        },
        icon: Icons.home,
        title: "الرئيسية",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, const DonateScreen());
        },
        icon: Icons.attach_money_outlined,
        title: "تبرع",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, InitiativesScreen());
        },
        icon: Icons.flag_outlined,
        title: "المبادرات",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, VolunteerScreen());
        },
        icon: Icons.volunteer_activism,
        title: "تطوع معنا",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, VolunteerScreenCelebrity());
        },
        icon: Icons.person,
        title: "تطوع معنا للمشاهير",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {
          navigateAndReplace(context, SupportCasesScreen());
        },
        icon: Icons.support,
        title: "دعم الحالات",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.perm_media_outlined,
        title: "مركز الأخبار",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.calculate_outlined,
        title: "حساب الزكاة",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.live_tv,
        title: "بث مباشر",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.shopping_cart,
        title: "تبرع من خلال التسوق",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.medical_services,
        title: "الخدمات الطبية",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.support_agent,
        title: "مركز الدعم",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.event_available,
        title: "الأحداث المباشرة",
        isTrailing: true,
      ),
      DrawerItemModel(
        onTap: () {},
        icon: Icons.share,
        title: "مشاركة",
        isTrailing: false,
      ),
    ];
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: primaryColor,
            height: deviceHeight * 0.3,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 48.0.r,
                    backgroundImage:
                        const AssetImage("assets/images/Sonna3 El_Kheir.png"),
                  ),
                  SizedBox(height: deviceHeight * 0.02),
                  Text(
                    "Sonnaa El-Kheir",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0.sp,
                      fontFamily: "regular",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.002),
                  Text(
                    "Sonnaael5eir@gmail.com",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0.sp,
                      fontFamily: "regular",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => DrawerItem(
                item: _drawerItems[index],
              ),
              itemCount: _drawerItems.length,
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;

  const DrawerItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: item.onTap,
      leading: Icon(
        item.icon,
        color: Colors.grey,
        size: 28.0.sp,
      ),
      title: Text(
        item.title,
        style: TextStyle(
            color: Colors.grey,
            fontFamily: "regular",
            fontSize: 14.0.sp,
            height: 2.0.h),
      ),
      trailing: item.isTrailing
          ? Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 18.0.sp,
            )
          : null,
    );
  }
}
