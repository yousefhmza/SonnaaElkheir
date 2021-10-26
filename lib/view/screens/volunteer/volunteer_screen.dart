import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:sonnaa/core/providers/locale_provider/locale_provider.dart';
import 'package:sonnaa/helper/components.dart';
import 'package:sonnaa/helper/constants.dart';
import 'package:sonnaa/view/widgets/custom_button.dart';
import 'package:sonnaa/view/widgets/custom_text.dart';
import 'package:sonnaa/view/widgets/custom_text_field.dart';
import 'package:sonnaa/view/widgets/home_drawer.dart';

class VolunteerScreen extends StatefulWidget {
  VolunteerScreen({Key? key}) : super(key: key);

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تطوع معنا",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: const HomeDrawer(),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(_focusNode);
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: "الأسم الرباعي",
                    hintText: "محمود علاء عبدالله محمد",
                    keyboardType: TextInputType.name,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "برجاء إدخال الأسم الرباعي كاملا";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomTextField(
                    label: "العنوان الحالي",
                    hintText: "رقم المكان, الشارع, المدينة, المحافظة",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "برجاء إدخال العنوان الصحيح بالكامل";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomTextField(
                    label: "رقم الهاتف",
                    hintText: "01065874123",
                    keyboardType: TextInputType.number,
                    validator: (String? value) {
                      if (value!.isEmpty || value.length != 11) {
                        return "برجاء إدخال رقم الهاتف الصحيح بالكامل";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomTextField(
                    label: "تاريخ الميلاد",
                    hintText: "Jun 24 2000",
                    textEditingController: _dateController,
                    readOnly: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "برجاء إدخال تاريخ الميلاد كاملا";
                      } else {
                        return null;
                      }
                    },
                    onTap: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        builder: (context, child) => Theme(
                          data: ThemeData.light().copyWith(
                            colorScheme:
                                ColorScheme.light(primary: primaryColor),
                          ),
                          child: child!,
                        ),
                        locale: BlocProvider.of<LocaleProvider>(context).locale,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950, 01, 01),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        final formattedDate =
                            DateFormat.yMMMd().format(pickedDate);
                        setState(() {
                          _dateController.text = formattedDate;
                        });
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomTextField(
                    label: "مكان الميلاد",
                    hintText: "رقم المكان, الشارع, المدينة, المحافظة",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "برجاء إدخال المكان الصحيح بالكامل";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomTextField(
                    label: "الرقم القومي",
                    hintText: "********************",
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "برجاء إدخال الرقم القومي بالكامل";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CustomText(
                    text: "الجنسية",
                    fontSize: 14.0.sp,
                  ),
                  DropdownButtonFormField(
                    value: 0,
                    onChanged: (index) {},
                    items: [
                      DropdownMenuItem(
                        value: 0,
                        child: CustomText(text: "مصر", fontSize: 16.0.sp),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child:
                        CustomText(text: "تونس", fontSize: 16.0.sp),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: CustomText(text: "المملكة العربيه السعودية", fontSize: 16.0.sp),
                      ),
                      DropdownMenuItem(
                        value: 3,
                        child: CustomText(text: "الأمارات المتحدة", fontSize: 16.0.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),

                  CustomButton(
                    title: "إرسال",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showToast(
                            "تم إرسال طلبك بالتطوع معنا بنجاح وسنقوم بالتواصل معك خلال 24 ساعة",
                            false);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
