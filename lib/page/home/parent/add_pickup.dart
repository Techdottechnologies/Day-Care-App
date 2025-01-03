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

class AddPickupPage extends StatefulWidget {
  const AddPickupPage({super.key});

  @override
  State<AddPickupPage> createState() => _AddPickupPageState();
}

class _AddPickupPageState extends State<AddPickupPage> {
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [

        Scaffold(
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
                            text_widget("Add Pickup",
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
                 
                   text_widget("First Name".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Salman saleem".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                            
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                                  text_widget("Last Name".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write name here".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                SizedBox(height: 2.h),
                                                  text_widget("Phone Number".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write Number".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                                  text_widget("Address".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write Address".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                            // line: 6,
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                  SizedBox(height: 16.h),
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
        SizedBox(height: 14.h),
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