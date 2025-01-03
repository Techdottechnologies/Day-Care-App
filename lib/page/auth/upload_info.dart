import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/teacher/drawer.dart';
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
class UploadInfo extends StatefulWidget {
  const UploadInfo({super.key});

  @override
  State<UploadInfo> createState() => _UploadInfoState();
}

class _UploadInfoState extends State<UploadInfo> {


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
                  text_widget("Upload Info",
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold
                  ),
                  SizedBox(height: 1.h),

                  text_widget("Upload profile photo and resumes",
                  fontSize: 15.sp,
                  color: Color(0xff8E8E8E),
                  ),
                  SizedBox(height: 8.h),

                  Center(child: Image.asset("assets/icons/uploadd.png",height: 15.h,)),
                            SizedBox(height: 5.h),
                  Center(child: Image.asset("assets/icons/resume.png",height: 15.h,)),

                SizedBox(height: 6.h),
                gradientButton("Next",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.offAll(TeacherDrawer());
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
SizedBox(height: 4.h),

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

