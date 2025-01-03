import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/singup_page.dart';
import 'package:adunestapp/page/home/admin/drawer.dart';
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
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    text_widget("Email Address".tr,
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "alihaider344@gmail.com".tr,
                                             fillColor: Color(0xffFAFAFA),
                                             isPrefix: true,
                                             
                                             prefixIcon: "assets/icons/mail.png",
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
                                             SizedBox(height: 2.h),
                                             text_widget("Password".tr,
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "*********".tr,
                                              fillColor: Color(0xffFAFAFA),

                                             isPrefix: true,
                                             
                                             prefixIcon: "assets/icons/lock.png",
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                            
                                             bColor: Colors.transparent,
                                           ),
                                           SizedBox(height: 4.h),
                                            Row(
                          children: [
                               RoundCheckBox(
              onTap: (selected) {},
              size: 2.3.h,
              uncheckedColor: Colors.transparent,
              
              disabledColor: Colors.transparent,
              checkedColor: MyColors.primary,
              checkedWidget: Icon(Icons.check,size: 1.6.h,color: Colors.white,),
            ),
            SizedBox(width: 2.5.w),
            text_widget("Remember me",fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.black),
Spacer(),
  onPress
  (
    ontap: (){
      // Get.to(ForgotPassword());
    },
    child: text_widget("Forgot Password?",
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: MyColors.primary
    ),
  ),
                          ],
                         ),
                SizedBox(height: 6.h),
                gradientButton("Login",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              setState(() {
                userType=0;
              });
              Get.offAll(VendorDrawer());
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
SizedBox(height: 4.h),
Center(
  child: Image.asset("assets/icons/or.png",
  width: 80.w,
  ),
),
SizedBox(height: 5.h),
 Center(
   child: RichText(
    
                            text: TextSpan(
                              style: GoogleFonts.plusJakartaSans(
                                 
                                  color: MyColors.primary,
                                    fontWeight: FontWeight.w500,
                                    fontSize:15.sp,
                                
                                  ),
                              children: <TextSpan>[
                                TextSpan(text: "Sign up as a Teacher".tr,
                                  style: GoogleFonts.plusJakartaSans(
                                 
                                  color: MyColors.primary,
                                    fontWeight: FontWeight.bold,
                                   fontSize:15.3.sp,
                                    decoration: TextDecoration.underline,
                                    decorationColor: MyColors.primary,
                                    decorationThickness: 1.4
                                  ),
                                   recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.to(SingupPage(isTeacher: true));
                  // Action for "Sign up as a Parent"
                  print("Teacher signup clicked");
                },
                                ),
                                TextSpan(
                                  text: "\t\t\t\t"
                                ),
                                TextSpan(
                                  text: 'Sign up as a Parent'.tr,
                                  style: GoogleFonts.plusJakartaSans(
                                 
                                  color: MyColors.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize:15.3.sp,
                                    decoration: TextDecoration.underline,
                                    decorationColor: MyColors.primary,
                                    decorationThickness: 1.4
                                  ),
                                   recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.to(SingupPage(isTeacher: false));
                  // Action for "Sign up as a Parent"
                  print("Parent signup clicked");
                },
                                ),
                              ],
                            ),
                          ),
 ),
 SizedBox(height: 5.h),
  Center(
    child: SizedBox(
      width: 70.w,
      child: RichText(
        textAlign: TextAlign.center,
                              text: TextSpan(
                                style: GoogleFonts.plusJakartaSans(
                                  color: Color(0xff8E8C8C),
                                     fontSize:14.5.sp,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "By signing up you agree to our".tr+"\t "),
                                  TextSpan(
                                    text: 'Terms'.tr,
                                    style: GoogleFonts.plusJakartaSans(
                                   
                                    color: MyColors.primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize:14.5.sp,
                                     
                                    ),
                                    
                                  ),
                                   TextSpan(text: "\tand".tr+"\t "),
                                    TextSpan(
                                    text: 'Conditions of Use'.tr,
                                    style: GoogleFonts.plusJakartaSans(
                                   
                                   
                                    color: MyColors.primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize:14.5.sp,
                                     
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
    ),
  ),
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