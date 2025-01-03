import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/change_password.dart';
import 'package:adunestapp/page/auth/login_page.dart';
import 'package:adunestapp/page/home/admin/contact_us.dart';
import 'package:adunestapp/page/home/admin/edit_profile.dart';
import 'package:adunestapp/page/home/admin/notification_screen.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/page/home/admin/term_page.dart';
import 'package:adunestapp/page/home/parent/add_children.dart';
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

class ParentProfilePage extends StatefulWidget {
  const ParentProfilePage({super.key});

  @override
  State<ParentProfilePage> createState() => _ParentProfilePageState();
}

class _ParentProfilePageState extends State<ParentProfilePage> {
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
                        Image.asset("assets/icons/back.png",height: 4.h,),
                        Spacer(),
                        text_widget("Profile",
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
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/dp.png",height: 5.2.h),
                      SizedBox(width: 3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      
                          text_widget("Salman Child Care",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          ),
                          text_widget("abc123@gmail.com",
                          fontSize: 14.sp,
                          color: Color(0xffA1A1A1)
                  
                          ),
                        ],
                      ),
                      Spacer(),
                      onPress(
                        ontap: (){
                          Get.to(EditProfile());
                        },
                        child: Image.asset("assets/icons/edit.png",height: 3.h,))
                    ],
                  ),
                ),
              ),
              // Spacer(),
                 SizedBox(height: 3.h),
                 Row(
                  children: [
                    text_widget("Children",
                    fontSize: 15.6.sp,
                    fontWeight: FontWeight.w700,
                    ),
                    Spacer(),
                    onPress(
                      ontap: (){
                        Get.to(AddChildren());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: MyColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:22.0,vertical: 8),
                          child: text_widget("Add Children",
                          fontSize: 14.3.sp,
                          color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                 ),
                 SizedBox(height: 4.h),
   ...List.generate(2, (index){
                    return   Padding(
                      padding: const EdgeInsets.only(bottom:14.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: index==0?Color(0xffEED04A):null,
                          border:index==0?null: Border.all(
                            color: Color(0xffF2F2F2),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/dp1.png",height: 8.h,),
                              SizedBox(width: 3.w),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text_widget("#234567",
                                  fontSize: 13.3.sp,
                                  color:index==0?Colors.white: Color(0xffA5A5A5),
                                  fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(height: 0.2.h),
                                  text_widget("Salman Saleem",
                                  fontSize: 16.sp,
                                  color: index==0?Colors.white: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 0.3.h),
                      
                                  text_widget("Class One",
                                  color:index==0?Colors.white: Color(0xff593FBE),
                                  fontSize: 14.sp,
                                  ),
                      
                                ],
                              )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(index==0? "assets/icons/edit1.png": "assets/icons/edit.png",height: 3.h,),
                                  SizedBox(height: 1.4.h),
                                  Image.asset(index==0? "assets/icons/dell.png":"assets/icons/del.png",height: 3.h,),
                      
                                ],
                              ),
                              SizedBox(width: 2.w),
                              
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                 SizedBox(height: 3.h),

                 onPress(
                  ontap: (){
                    Get.to(ChangePassword());
                  },
                   child: Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7.w),
                        Image.asset("assets/icons/lock1.png",height: 2.1.h,),
                        SizedBox(width: 5.w),
                        text_widget("Change Password",
                        fontSize: 14.6.sp,
                        ),
                      ],
                    ),
                   ),
                 ),
                 SizedBox(height: 3.h),
                 onPress(
                  ontap: (){
                    Get.to(ContactUsPage());
                  },
                   child: Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7.w),
                        Image.asset("assets/icons/cphone.png",height: 2.1.h,),
                        SizedBox(width: 5.w),
                        text_widget("Contact Us",
                        fontSize: 14.6.sp,
                        ),
                      ],
                    ),
                   ),
                 ),
                  SizedBox(height: 3.h),
                 onPress(
                  ontap: (){
                    Get.to(NotificationScreen());
                  },
                   child: Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7.w),
                        Image.asset("assets/icons/bell.png",height: 2.5.h,),
                        SizedBox(width: 5.w),
                        text_widget("Notifications",
                        fontSize: 14.6.sp,
                        ),
                      ],
                    ),
                   ),
                 ),
                  SizedBox(height: 3.h),
                 onPress(
                  ontap: (){
                    Get.to(TermPage());
                  },
                   child: Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE8E8E8),
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7.w),
                        Image.asset("assets/icons/term.png",height: 2.5.h,),
                        SizedBox(width: 5.w),
                        text_widget("Terms and Conditions",
                        fontSize: 14.6.sp,
                        ),
                      ],
                    ),
                   ),
                 ),
                  SizedBox(height: 3.h),
                 Container(
                  height: 6.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffE8E8E8),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 7.w),
                      Image.asset("assets/icons/del1.png",height: 2.5.h,),
                      SizedBox(width: 5.w),
                      text_widget("Delete Account",
                      fontSize: 14.6.sp,
                      ),
                    ],
                  ),
                 ),
                     SizedBox(height: 6.h),
            gradientButton("Logout",
        font: 16,
        txtColor: MyColors.white,
        ontap: () {
          Get.offAll(LoginPage());

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