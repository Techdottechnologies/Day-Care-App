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

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                            text_widget("Edit Profile",
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
                  Center(child: Image.asset("assets/images/uplo.png",height: 13.h)),
                  SizedBox(height: 4.h),
                   text_widget("Name".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Enter your name".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                               
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                                  text_widget("Email".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Enter your email".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                               userType==1||userType==2?  Image.asset("assets/icons/resume.png"):SizedBox(),
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
              ))
            ],
          )
        
        ),
      ],
    );
}
  }
  Widget customDropDown(List<String> items, String title, String? selectedValue,
    ValueChanged<String?> onChanged) {
  return Container(
    height: 6.h,
    width: 100.w,
    decoration: BoxDecoration(
        color: Color(0xffFAFAFA), borderRadius: BorderRadius.circular(40)),
    child: Row(
      children: [
        SizedBox(width: 3.w),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                selectedValue ?? title,
                style: GoogleFonts.poppins(
                    fontSize: 13.7.sp,
                    fontWeight: FontWeight.w400,
                    color:
                        selectedValue != null ? Colors.black : Colors.black54),
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
                )
              ),
              
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: GoogleFonts.nunito(
                            fontSize: 14.sp,
                          ),
                        ),
                      ))
                  .toList(),
              onChanged: onChanged,
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 22),
                height: 6.h,
                width: 100.w,
              ),
              
              iconStyleData: IconStyleData(
                icon: Icon(
                  Remix.arrow_down_s_line,
                  size: 2.5.h,
                ),
              ),
              menuItemStyleData:  MenuItemStyleData(
                height: 40,
                
              ),
            ),
          ),
        ),
      ],
    ),
  );
}