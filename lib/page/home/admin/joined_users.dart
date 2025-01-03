import 'package:adunestapp/config/colors.dart';
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
class JoinedUsers extends StatefulWidget {
  const JoinedUsers({super.key});

  @override
  State<JoinedUsers> createState() => _JoinedUsersState();
}

class _JoinedUsersState extends State<JoinedUsers> {
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
                        text_widget("Joined Users",
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
              ...List.generate(6, (index){
                return Padding(
                  padding: const EdgeInsets.only(bottom:14.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
                    children: [
                       Image.asset("assets/icons/dp.png",height: 5.h),
                    SizedBox(width: 4.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Jack William",
                        fontSize: 16.sp,
                        
                        ),
                        SizedBox(height: 0.3.h),
                        text_widget("Chicago, IL United States",
                        fontSize: 13.sp,
                        color: Color(0xff484848),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("assets/icons/chat.png",height: 4.h,)
                    ],
                   ),
                   SizedBox(height: 1.2.h),
                   Divider(
                    color: Color(0xffF2F2F2),
                    thickness: 2,
                   ),
                  ],
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

