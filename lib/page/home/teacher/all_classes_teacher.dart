import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/page/home/teacher/class_detail_teacher.dart';
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

class AllClassesTeacher extends StatefulWidget {
  const AllClassesTeacher({super.key});

  @override
  State<AllClassesTeacher> createState() => _AllClassesTeacherState();
}

class _AllClassesTeacherState extends State<AllClassesTeacher> {
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [
        // Image.asset("assets/images/lbg.png",fit: BoxFit.cover,height: Get.height,width: Get.width,),

        Scaffold(
          backgroundColor: Color(0xffFFFFFD),
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
                            Image.asset("assets/icons/back.png",height: 4.h,),
                            Spacer(),
                            text_widget("Classes",
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
      SizedBox(height: 2.h),
             ...List.generate(4, (index){
          return   onPress(
            ontap: (){
              Get.to(ClassDetailTeacher());
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom:18.0),
              child: Container(
                decoration: BoxDecoration(
                  
                    color:index==1?Color(0xff9BC851):index==2?Color(0xffEED04A):index==3?Color(0xff593FBE): Color(0xffDF7778),
                  
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text_widget("Assign Class",
                          fontSize: 14.5.sp,
                          color: Colors.white,
                          
                          ),
                          SizedBox(height: 0.5.h),
                          
                          text_widget("Quran",
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text_widget("Time",
                          fontSize: 15.sp,
                          color: Colors.white,
                          ),
                          SizedBox(height: 0.5.h),
                          text_widget("08:00 AM to 10:00 AM",
                          color: MyColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );

        }),
                  SizedBox(height: 16.h),
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
 