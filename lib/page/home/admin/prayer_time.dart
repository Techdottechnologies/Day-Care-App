import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/pop.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class PrayerTimePage extends StatefulWidget {
  const PrayerTimePage({super.key});

  @override
  State<PrayerTimePage> createState() => _PrayerTimePageState();
}

class _PrayerTimePageState extends State<PrayerTimePage> {
  int current = 0; 
  List txt = [
    "All",
    "Class Name",
    "Class Name",
    "Class Name",
    "Class Name",

  ];
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
         Image.asset("assets/images/pray.png",fit: BoxFit.fill,height: Get.height,width: Get.width,),
       
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:    gradientButton("Add prayer & Time",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
                showDialog(
            useSafeArea: false,
            context: context,
            barrierDismissible: true,
            
            barrierColor: MyColors.black.withOpacity(0.8),
            builder: (context) => prayerTime());
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
         
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
        
                  ),
        
                ),
                child: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            onPress(
                              ontap: (){
                                Get.back();
                              },
                              child: Image.asset("assets/icons/back.png",height: 4.h,)),
                            Spacer(),
                            text_widget("Prayer Times",
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            ),
        
                          ],
                        ),
                     
                        SizedBox(height: 1.h),
        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Expanded(child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  SizedBox(height: 23.h),
                 Container(
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xffDF7778),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 15.w,
                        child: text_widget("Fajr",
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      text_widget("5:00 AM",
                      color: Colors.white,
                      fontSize: 16.sp,
                      ),
                      Spacer(),
                      Image.asset("assets/icons/edit1.png",height: 2.4.h,),
                      SizedBox(width: 3.w),

                      Image.asset("assets/icons/dell.png",height: 2.4.h,),
                      SizedBox(width: 3.w),


                    ],
                  ),
                 ),
                 SizedBox(height: 2.h),
                  Container(
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xffEED04A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 15.w,
                        child: text_widget("Dhuhr",
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      text_widget("12:05 PM",
                      color: Colors.white,
                      fontSize: 16.sp,
                      ),
                      Spacer(),
                      Image.asset("assets/icons/edit1.png",height: 2.4.h,),
                      SizedBox(width: 3.w),

                      Image.asset("assets/icons/dell.png",height: 2.4.h,),
                      SizedBox(width: 3.w),


                    ],
                  ),
                 ),
                 SizedBox(height: 2.h),
                  Container(
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xff9BC851),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 15.w,
                        child: text_widget("Asr",
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      text_widget("4:20 PM",
                      color: Colors.white,
                      fontSize: 16.sp,
                      ),
                      Spacer(),
                      Image.asset("assets/icons/edit1.png",height: 2.4.h,),
                      SizedBox(width: 3.w),

                      Image.asset("assets/icons/dell.png",height: 2.4.h,),
                      SizedBox(width: 3.w),


                    ],
                  ),
                 ),
                 SizedBox(height: 2.h),
                  Container(
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xff9677DF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 15.w,
                        child: text_widget("Magrib",
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      text_widget("6:20 PM",
                      color: Colors.white,
                      fontSize: 16.sp,
                      ),
                      Spacer(),
                      Image.asset("assets/icons/edit1.png",height: 2.4.h,),
                      SizedBox(width: 3.w),

                      Image.asset("assets/icons/dell.png",height: 2.4.h,),
                      SizedBox(width: 3.w),


                    ],
                  ),
                 ),
                 SizedBox(height: 2.h),
                  Container(
                  height: 5.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xffCE77DF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 15.w,
                        child: text_widget("Isha",
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      text_widget("7:20 PM",
                      color: Colors.white,
                      fontSize: 16.sp,
                      ),
                      Spacer(),
                      Image.asset("assets/icons/edit1.png",height: 2.4.h,),
                      SizedBox(width: 3.w),

                      Image.asset("assets/icons/dell.png",height: 2.4.h,),
                      SizedBox(width: 3.w),


                    ],
                  ),
                 ),
                 ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}

