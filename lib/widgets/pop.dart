import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/add_student.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Confirm3 extends StatelessWidget {
  const Confirm3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> txts = [
      "Class Name",
      "Class Name",
      "Class Name",
      "Class Name",
    ];
    String? selectValue;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              onPress(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Remix.close_line,
                    color: Colors.white,
                    size: 3.4.h,
                  )),
            ],
          ),
          onPress(
            ontap: () {
              // Get.to(Checkinpage());
            },
            child: StatefulBuilder(
              builder: (BuildContext context, setState) {
                return FittedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    // height: 38.h,
                    width: 93.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: text_widget(
                              'Assign Class',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          text_widget("Select Class",
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          customDropDown(txts, "Select Class", selectValue,
                              (value) {
                            setState(() {
                              selectValue = value;
                            });
                          }),
                          SizedBox(height: 2.h),
                          text_widget("Start Time".tr,
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          textFieldWithPrefixSuffuxIconAndHintText(
                            "Add Time".tr,
                            fillColor: Color(0xffFAFAFA),
                            mainTxtColor: Colors.black,
                            obsecure: false,
                            radius: 40,
                            bColor: Colors.transparent,
                          ),
                          SizedBox(height: 2.h),
                          text_widget("End Time".tr,
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          textFieldWithPrefixSuffuxIconAndHintText(
                            "Add Time".tr,
                            fillColor: Color(0xffFAFAFA),
                            mainTxtColor: Colors.black,
                            obsecure: false,
                            radius: 40,
                            bColor: Colors.transparent,
                          ),
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              onPress(
                                ontap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 5.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: MyColors.primary,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: text_widget(
                                    'Assign Class',
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class addClass extends StatelessWidget {
  const addClass({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> txts = [
      "Class Name",
      "Class Name",
      "Class Name",
      "Class Name",
    ];
    String? selectValue;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              onPress(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Remix.close_line,
                    color: Colors.white,
                    size: 3.4.h,
                  )),
            ],
          ),
          onPress(
            ontap: () {
              // Get.to(Checkinpage());
            },
            child: StatefulBuilder(
              builder: (BuildContext context, setState) {
                return FittedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    // height: 38.h,
                    width: 93.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: text_widget(
                              'Add Class',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          SizedBox(height: 3.h),
                          text_widget("Class Name".tr,
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          textFieldWithPrefixSuffuxIconAndHintText(
                            "Write Name".tr,
                            fillColor: Color(0xffFAFAFA),
                            mainTxtColor: Colors.black,
                            obsecure: false,
                            radius: 40,
                            bColor: Colors.transparent,
                          ),
                          SizedBox(height: 2.h),
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              onPress(
                                ontap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 5.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: MyColors.primary,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: text_widget(
                                    'Add Class',
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class prayerTime extends StatelessWidget {
  const prayerTime({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> txts = [
      "Class Name",
      "Class Name",
      "Class Name",
      "Class Name",
    ];
    String? selectValue;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              onPress(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Remix.close_line,
                    color: Colors.white,
                    size: 3.4.h,
                  )),
            ],
          ),
          onPress(
            ontap: () {
              // Get.to(Checkinpage());
            },
            child: StatefulBuilder(
              builder: (BuildContext context, setState) {
                return FittedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    // height: 38.h,
                    width: 93.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: text_widget(
                              'Add Prayer & Time',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          SizedBox(height: 3.h),
                          text_widget("Name".tr,
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          textFieldWithPrefixSuffuxIconAndHintText(
                            "Write Name".tr,
                            fillColor: Color(0xffFAFAFA),
                            mainTxtColor: Colors.black,
                            obsecure: false,
                            radius: 40,
                            bColor: Colors.transparent,
                          ),
                           SizedBox(height: 3.h),
                          text_widget("Time".tr,
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          textFieldWithPrefixSuffuxIconAndHintText(
                            "Add Time".tr,
                            fillColor: Color(0xffFAFAFA),
                            mainTxtColor: Colors.black,
                            obsecure: false,
                            radius: 40,
                            bColor: Colors.transparent,
                          ),
                          SizedBox(height: 2.h),
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              onPress(
                                ontap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 5.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: MyColors.primary,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: text_widget(
                                    'Add',
                                    fontSize: 15.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
