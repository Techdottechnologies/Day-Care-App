import 'package:adunestapp/config/colors.dart';
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
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {


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
                  text_widget("Change Password",
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold
                  ),
                  SizedBox(height: 1.h),

                  text_widget("Enter your password again for change",
                  fontSize: 15.sp,
                  color: Color(0xff8E8E8E),
                  ),
                  SizedBox(height: 8.h),

                    text_widget("New Password".tr,
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "*********".tr,
                                              fillColor: Color(0xffFAFAFA),

                                             isPrefix: true,
                                             isSuffix: true,
                                             prefixIcon: "assets/icons/lock.png",
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                            
                                             bColor: Colors.transparent,
                                           ),
                                           SizedBox(height: 2.h),
                                            text_widget("Confirm Password".tr,
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "*********".tr,
                                              fillColor: Color(0xffFAFAFA),

                                             isPrefix: true,
                                             
                                             prefixIcon: "assets/icons/lock.png",
                                             isSuffix: true,
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                            
                                             bColor: Colors.transparent,
                                           ),
                            
                SizedBox(height: 6.h),
                gradientButton("Save",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
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

