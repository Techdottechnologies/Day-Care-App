import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/upload_info.dart';
import 'package:adunestapp/page/home/parent/add_children.dart';
import 'package:adunestapp/page/home/parent/all_children.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SingupPage extends StatefulWidget {
  bool isTeacher;
   SingupPage({super.key,required this.isTeacher});

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/lbg.png",
          fit: BoxFit.cover,
          height: Get.height,
          width: Get.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    Center(
                        child: Image.asset(
                      "assets/icons/logo.png",
                      height: 5.4.h,
                    )),
                    SizedBox(height: 4.h),
                    text_widget("First Name".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Enter your first name".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/user.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Last Name".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Enter your last name".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/user.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Email".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Enter your Email".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/mail.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Phone Number".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Enter your Number".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/phone.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Daycare ID".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Enter your ID".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/user.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Password".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "*********".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/lock.png",
                      mainTxtColor: Colors.black,
                      isSuffix: true,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 2.h),
                    text_widget("Confirm Password".tr,
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                    SizedBox(height: 1.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "*********".tr,
                      fillColor: Color(0xffFAFAFA),
                      isPrefix: true,
                      prefixIcon: "assets/icons/lock.png",
                      mainTxtColor: Colors.black,
                      obsecure: false,
                      radius: 40,
                      isSuffix: true,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 6.h),
                    gradientButton(widget.isTeacher? "Signup as a Teacher":"Signup as a Parent",
                        font: 16, txtColor: MyColors.white, ontap: () {
                          setState(() {
                            widget.isTeacher?userType=1:userType=2;
                          });
                          widget.isTeacher?Get.to(UploadInfo()):Get.to(Allchildrens());
                      //  _.loginUser();
                    },
                        width: 90,
                        radius: BorderRadius.circular(40),
                        height: 6,
                        isColor: true,
                        clr: MyColors.primary),
                    SizedBox(height: 4.h),
                    Center(
                      child: onPress(
                        ontap: (){
                          setState(() {
                            
                          widget.isTeacher=!widget.isTeacher;
                          });
                        },
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.plusJakartaSans(
                              color: MyColors.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "\t\t\t\t"),
                              TextSpan(
                                text: widget.isTeacher? 'Sign up as a Parent':'Sign up as a Teacher'.tr,
                                style: GoogleFonts.plusJakartaSans(
                                    color: MyColors.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.3.sp,
                                    decoration: TextDecoration.underline,
                                    decorationColor: MyColors.primary,
                                    decorationThickness: 1.4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
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
