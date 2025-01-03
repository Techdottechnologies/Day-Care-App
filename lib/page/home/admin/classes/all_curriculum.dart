import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/classes/class_detail.dart';
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
class AllCurriculum extends StatefulWidget {
  const AllCurriculum({super.key});

  @override
  State<AllCurriculum> createState() => _AllCurriculumState();
}

class _AllCurriculumState extends State<AllCurriculum> {
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
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFD),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:    gradientButton("Add Class",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
                showDialog(
            useSafeArea: false,
            context: context,
            barrierDismissible: true,
            
            barrierColor: MyColors.black.withOpacity(0.8),
            builder: (context) => addClass());
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
                        Image.asset("assets/icons/back.png",height: 4.h,),
                        Spacer(),
                        text_widget("Classes",
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        ),

                      ],
                    ),
                    SizedBox(height: 2.h),
                     textFieldWithPrefixSuffuxIconAndHintText(
                                             "Search here",
                                             fillColor: Colors.white.withOpacity(0.14),
                                             isPrefix: true,
                                             hintColor: Colors.white,
                                             pColor: Colors.white,
                                             prefixIcon: "assets/icons/s1.png",
                                             mainTxtColor: Colors.white,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
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
                  ...List.generate(3, (index){
                    return   onPress(
                      ontap: (){
                        Get.to(ClassDetail());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:14.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffF2F2F2),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: [
                                
                                SizedBox(width: 3.w),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                
                                    text_widget("Class Name",
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600
                                    ),
                                    SizedBox(height: 0.3.h),
                        
                                    text_widget("50 Students",
                                    color: Color(0xff979797),
                                    fontSize: 14.sp,
                                    ),
                        
                                  ],
                                )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/icons/edit.png",height: 3.h,),
                                    SizedBox(height: 1.4.h),
                                    Image.asset("assets/icons/del.png",height: 3.h,),
                        
                                  ],
                                ),
                                SizedBox(width: 2.w),
                                
                              ],
                            ),
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
      ),
    );
  }
}

