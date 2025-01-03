import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
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

class TermPage extends StatefulWidget {
  const TermPage({super.key});

  @override
  State<TermPage> createState() => _TermPageState();
}

class _TermPageState extends State<TermPage> {
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [
        Image.asset("assets/images/lbg.png",fit: BoxFit.cover,height: Get.height,width: Get.width,),

        Scaffold(
          backgroundColor: Colors.transparent,
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
                            text_widget("Terms & Conditions",
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
                 text_widget("Welcome to Edunest. These terms and conditions outline the rules and regulations for the use of our mobile application ('edunest'). ",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 3.h),
                 text_widget("License to Use",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 1.h),
                 text_widget("Subject to these terms, Edunest grants you a non-exclusive, non-transferable, limited license to use the app for personal, non-commercial purposes. This license is conditional on your compliance with these terms and conditions.",
                 fontSize: 13.8.sp,
                 color: Color(0xff696969),
                 ),
                 SizedBox(height: 3.h),
                 text_widget("User Accounts",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 1.h),
                 text_widget("To access certain features of Edunest, you may be required to create an account. You agree to provide accurate and complete information when creating your account and to keep this information up to date. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.",
                 fontSize: 13.8.sp,
                 color: Color(0xff696969),
                 ),
                 SizedBox(height: 3.h),
                 text_widget("Termination",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 1.h),
                 text_widget("We may terminate or suspend your access to Edunest immediately, without prior notice or liability, for any reason, including if you breach these terms and conditions. Upon termination, your right to use Edunest will cease immediately.",
                 fontSize: 13.8.sp,
                 color: Color(0xff696969),
                 ),
                  SizedBox(height: 3.h),
                 text_widget("Contact Us",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 1.h),
                 text_widget("If you have any questions about these terms and conditions, please contact us at [Your Contact Information].",
                 fontSize: 13.8.sp,
                 color: Color(0xff696969),
                 ),
                  SizedBox(height: 3.h),
                 text_widget("Governing Law",
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w600,
                 ),
                 SizedBox(height: 1.h),
                 text_widget("These terms and conditions are governed by and construed in accordance with the laws of the State of [Your State/Country], and you submit to the non-exclusive jurisdiction of the state and federal courts located in [Your State/Country] for the resolution of any disputes.",
                 fontSize: 13.8.sp,
                 color: Color(0xff696969),
                 ),
                 SizedBox(height: 10.h),

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
 