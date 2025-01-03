import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/parent/add_children.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
class Allchildrens extends StatefulWidget {
  const Allchildrens({super.key});

  @override
  State<Allchildrens> createState() => _AllchildrensState();
}

class _AllchildrensState extends State<Allchildrens> {


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset("assets/images/lbg.png",fit: BoxFit.cover,height: Get.height,width: Get.width,),
        Scaffold(
          backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h),
                   Center(child: Image.asset("assets/icons/logo.png",height: 5.4.h,)),
                  SizedBox(height: 4.h),
                  text_widget("Add Your Child",
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold
                  ),
                  SizedBox(height: 1.h),

                  text_widget("Write details of your child",
                  fontSize: 15.sp,
                  color: Color(0xff8E8E8E),
                  ),
                  SizedBox(height: 6.h),
                gradientButton("Add",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.to(AddChildren());
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
SizedBox(height: 4.h),
   ...List.generate(3, (index){
                    return   Padding(
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
                    );
                  })

                ],
              ),
            ),
          ),
        ),
        ),
      ],
    );
  }
}

