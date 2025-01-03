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
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


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
                  text_widget("Forgot Password ",
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold
                  ),
                  SizedBox(height: 1.h),

                  text_widget("Enter your email so we can send link on it",
                  fontSize: 15.sp,
                  color: Color(0xff8E8E8E),
                  ),
                  SizedBox(height: 8.h),

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
                            
                SizedBox(height: 6.h),
                gradientButton("Send",
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


final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(1.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                   
                  ],
                )),
          ),
        ))
    .toList();
    final List<String> imgList = [
"assets/images/cimg.png",
"assets/images/cimg.png",
"assets/images/cimg.png",

];