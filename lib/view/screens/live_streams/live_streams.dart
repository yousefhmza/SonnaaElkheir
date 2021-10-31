import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/screens/live_streams/past_streams_screen.dart';
import 'package:sonnaa/view/screens/live_streams/upcoming_streams_screen.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

import 'package:sonnaa/view/widgets/home_drawer.dart';

class LiveStreamsScreen extends StatelessWidget {
  const LiveStreamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("البث المباشر"),
          bottom: TabBar(
            indicatorColor: primaryColor,
            tabs: [
              Tab(
                child: CustomText(
                  text: "الأحداث السابقة",
                  fontSize: 16.0.sp,
                ),
              ),
              Tab(
                child: CustomText(
                  text: "الأحداث القادمة",
                  fontSize: 16.0.sp,
                ),
              ),
            ],
          ),
        ),
        drawer: const HomeDrawer(),
        body: TabBarView(children: [
          PastStreamsScreen(),
          UpcomingStreamsScreen(),
        ]),
      ),
    );
  }
}
