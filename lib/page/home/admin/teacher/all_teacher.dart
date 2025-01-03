import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/teacher/teacher_detail.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class AllTeacher extends StatefulWidget {
  const AllTeacher({super.key});

  @override
  State<AllTeacher> createState() => _AllTeacherState();
}

class _AllTeacherState extends State<AllTeacher> {
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
                        text_widget("Teachers",
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       ...List.generate(txt.length, (index){
                        return  onPress(
                          ontap: (){
                          setState(() {
                            current=index;
                          });

                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Container(
                              height: 4.h,
                              decoration: BoxDecoration(
                                color:current==index?  MyColors.primary:null,
                                border: Border.all(
                                  color: current==index?Colors.transparent:Color(0xffE7E7E7),
                                ),
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Center(
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal:index==0?6.w: 5.w),
                                  child: text_widget(txt[index],
                                  color:current==index? Colors.white: Color(0xff1E1E1E).withOpacity(0.51),
                                  fontSize: 14.5.sp,
                                  fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                       })
                      ],
                    )),
                    SizedBox(height: 4.h),
                  ...List.generate(3, (index){
                    return   onPress(
                      ontap: (){
                        Get.to(TeacherDetail());
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/icons/img1.png",height: 6.h,),
                                    SizedBox(width: 3.w),
                                    Expanded(child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        text_widget("#234567",
                                        fontSize: 13.3.sp,
                                        color: Color(0xffA5A5A5),
                                        fontWeight: FontWeight.w600,
                                        ),
                                        // SizedBox(height: 0.2.h),
                                        text_widget("Salman Saleem",
                                        fontSize: 16.sp,
                                        ),
                                      
                                                      
                                      ],
                                    )),
                                  
                                    SizedBox(width: 2.w),
                                      
                                            Image.asset("assets/icons/del.png",height: 3.h,),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/icons/icon.png",height: 3.2.h,),
                                        SizedBox(width: 2.w),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            text_widget("Gender",
                            fontSize: 12.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 0.2.h),
                            text_widget("Male",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                     Row(
                                      children: [
                                        Image.asset("assets/icons/icon.png",height: 3.2.h,),
                                        SizedBox(width: 2.w),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            text_widget("Assign Classes",
                            fontSize: 12.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 0.2.h),
                            text_widget("Class Name",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 1.5.h),
                                 Row(
                                      children: [
                                        Image.asset("assets/icons/icon.png",height: 3.2.h,),
                                        SizedBox(width: 2.w),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            text_widget("Qualification",
                            fontSize: 12.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 0.2.h),
                            text_widget("Quran Instructor, Arabic Proficient",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                                          ],
                                        )
                                      ],
                                    ),
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

