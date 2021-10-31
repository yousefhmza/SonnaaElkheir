import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';

class PastStreamsScreen extends StatelessWidget {
  const PastStreamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 24.0.r,
            backgroundColor: canvasColor,
            backgroundImage: const AssetImage("assets/images/facebook.png"),
          ),
          title: CustomText(
            text: "حدث خيري في صعيد مصر",
            fontSize: 16.0.sp,
          ),
          subtitle: CustomText(
            text: "24/6/2021 07:00 PM",
            fontSize: 14.0.sp,
            color: Colors.grey,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18.0.sp,
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: deviceHeight * 0.02,
        ),
        itemCount: 10,
      ),
    );
  }
}
