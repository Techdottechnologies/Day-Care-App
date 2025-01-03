import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/events/add_event.dart';
import 'package:adunestapp/page/home/admin/events/event_view.dart';
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

import '../../../../../widgets/txt_field.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({super.key});

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  List notifications = [
    ["Upcoming Exam","Reminder: Your exam for [Course Name] is scheduled on [Date] at [Time]. Don't forget to study."],
    ["App Update","We've updated our app! Discover new features and improvements to enhance your experience. Update now to the latest version."],
    ["Feedback Request","How was your experience with Learn? Please take a moment to rate and review your recent interactions."],
    ["Subscription Reminder","Your subscription for Learn is about to expire on [Date]. Renew now to continue enjoying premium features."],
    ["New Feature Announcement","Check out the new feature in Learn that helps you stay organized with your assignments and deadlines."],
  ];
  @override
  Widget build(BuildContext context) {
    int current = 0;
   
    return  Stack(
      children: [
      
        Scaffold(
          backgroundColor: Color(0xffFFFFFD),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton:   gradientButton("Add new Event",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.to(AddEvent());
            //  _.loginUser();
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
                            text_widget("Events",
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
             Center(
              child: Row(
                children: [
                  Spacer(),
                   Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                    children: [
                       gradientButton("Upcoming",
            font: 15,
            txtColor:current==0? MyColors.white:Color(0xff747474),
            ontap: () {
              setState(() {
                current=0;
              });
            //  _.loginUser();
            },
            width: 40,
            radius: BorderRadius.circular(40),
            height: 5,
            isColor: true,
            clr:current==0? MyColors.primary:Colors.transparent),
               gradientButton("Previous",
            font: 15,
            txtColor:current==1? MyColors.white:Color(0xff747474),
            ontap: () {
              setState(() {
                current=1;
              });
            //  _.loginUser();
            },
            width: 40,
            radius: BorderRadius.circular(40),
            height: 5,
            isColor: true,
            clr:current==1? MyColors.primary:Colors.transparent),
                    ],
                   )),
                  Spacer(),

                ],
              ),
            ),   SizedBox(height: 3.h),
               
                             GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          
          mainAxisSpacing: 10.0,
          padding: EdgeInsets.zero,
          childAspectRatio: 0.77,
          shrinkWrap: true,
          children: List.generate(2, (index) {
              return     onPress(
                ontap: (){
                  Get.to(EventView());
                },
                child: Container(
                        width:10.h,
                        // height: 28.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(
                            color: Color(0xffDEDEDE)
                          )
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              child: Image.asset("assets/images/eimg.png",height: 13.h,
                              width: Get.width,
                              fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 1.7.h),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:12.0,),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ text_widget("Naats Competition Event",
                              fontSize: 13.4.sp,
                              fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 1.7.h),
                              Row(
                                children: [
                                  Image.asset("assets/images/e1.png",height: 1.5.h),
                                  SizedBox(width: 1.w),
                                  text_widget("23 March 2024",
                                  fontSize: 11.sp,
                                  color: Color(0xffB9B9B9),
                                  fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(width: 1.w),
                                  SizedBox(height: 1.7.h,
                                  child: VerticalDivider(
                                    color: Color(0xffB9B9B9),
                                  ),
                                  ),
                                  SizedBox(width: 1.w),
                                    
                                  Image.asset("assets/images/e2.png",height: 1.5.h),
                                  SizedBox(width: 1.w),
                                  text_widget("07:00 PM",
                                  fontSize: 11.sp,
                                  color: Color(0xffB9B9B9),
                                  fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                                    SizedBox(height: 1.7.h),
                                    Row(
                                            children: [
                                               Image.asset("assets/images/e3.png",height: 1.5.h),
                                  SizedBox(width: 1.5.w),
                                  text_widget("Kingston, New York",
                                  fontSize: 11.sp,
                                  color: Color(0xffB9B9B9),
                                  fontWeight: FontWeight.w600,
                                  ),
                                            ],
                                    ),],
                             ),
                           ),
                                  // SizedBox(height: 1.7.h),
                                      
                                  
                          ],
                        ),
                      ),
              );
          }))        
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
 
 