import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../widgets/txt_field.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notifications = [
    ["Upcoming Exam","Reminder: Your exam for [Course Name] is scheduled on [Date] at [Time]. Don't forget to study."],
    ["App Update","We've updated our app! Discover new features and improvements to enhance your experience. Update now to the latest version."],
    ["Feedback Request","How was your experience with Learn? Please take a moment to rate and review your recent interactions."],
    ["Subscription Reminder","Your subscription for Learn is about to expire on [Date]. Renew now to continue enjoying premium features."],
    ["New Feature Announcement","Check out the new feature in Learn that helps you stay organized with your assignments and deadlines."],
  ];
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [
        Image.asset("assets/images/lbg.png",fit: BoxFit.cover,height: Get.height,width: Get.width,),

        Scaffold(
          backgroundColor: Colors.transparent,
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
                            text_widget("Notifications",
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            ),
        
                          ],
                        ),
                        SizedBox(height: 3.h),
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
                 
                   text_widget("All Notification (2)".tr,
                                  
                             
                             fontSize:15.6.sp,
                             color: MyColors.primary,
                             fontWeight: FontWeight.bold),
                                               SizedBox(height: 3.h),
                                              ...List.generate(notifications.length, (index){
                                                return  Padding(
                                                  padding: const EdgeInsets.only(bottom:14.0),
                                                  child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFAFAFA),
                                                    borderRadius: BorderRadius.circular(16)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(16.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        text_widget(notifications[index][0],
                                                        fontSize: 14.7.sp,
                                                        ),
                                                        SizedBox(height: .7.h),
                                                        text_widget(notifications[index][1],
                                                        fontSize: 13.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: Color(0xff696969),
                                                        
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                                                                 ),
                                                );
                                              })
                                             
                ],
                 ),
                ),
              ))
            ],
          )
        
        ),
      ],
    );
}
  }
 
 