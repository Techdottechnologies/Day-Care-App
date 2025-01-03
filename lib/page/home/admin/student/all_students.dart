import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/add_student.dart';
import 'package:adunestapp/page/home/admin/student/student_detail.dart';
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
class AllStudents extends StatefulWidget {
  const AllStudents({super.key});

  @override
  State<AllStudents> createState() => _AllStudentsState();
}

class _AllStudentsState extends State<AllStudents> {
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
      floatingActionButton:    gradientButton("Add Student",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.to(AddStudent());
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
                        text_widget("Students",
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
                        Get.to(StudentDetail());
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
                                Image.asset("assets/icons/img1.png",height: 8.h,),
                                SizedBox(width: 3.w),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text_widget("#234567",
                                    fontSize: 13.3.sp,
                                    color: Color(0xffA5A5A5),
                                    fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 0.2.h),
                                    text_widget("Salman Saleem",
                                    fontSize: 16.sp,
                                    ),
                                    SizedBox(height: 0.3.h),
                        
                                    text_widget("Class One",
                                    color: Color(0xff593FBE),
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

