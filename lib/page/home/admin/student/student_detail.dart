import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/chat/chat_page.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class StudentDetail extends StatefulWidget {
  const StudentDetail({super.key});

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
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
                        text_widget("Student Detail",
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        ),

                      ],
                    ),
                    SizedBox(height: 2.h),
                     Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFD).withOpacity(0.13),
                            borderRadius: BorderRadius.circular(20)
                          ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:32.0,vertical: 18),
                          child: Row(
                            children: [
                                Image.asset("assets/images/dp1.png",height: 8.h,),
                                SizedBox(width: 5.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text_widget("#234567",
                                    fontSize: 13.3.sp,
                                    color: Colors.white.withOpacity(0.70),
                                    fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 0.2.h),
                                    text_widget("Salman Saleem",
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    
                                    ),
                                    SizedBox(height: 0.3.h),
                                                      
                                    text_widget("Class One",
                                  color: Colors.white.withOpacity(0.70),
                                    fontSize: 14.sp,
                                    ),
                                  ]),
                                
                            ],
                          ),
                        ),
                        ),
                          Spacer(),
                                  onPress(
                                    ontap: (){
                                      Get.to(ChatPage());
                                    },
                                    child: Image.asset("assets/icons/chat.png",height: 5.h,)),
                                SizedBox(width: 5.w),

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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Date of Birth",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("23 March 2002",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Gender",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Male",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Parent Name",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Saleem Ahmed",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Parent Number",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("0300-1000234",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            
             SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Allergies",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("None",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Chronic Illness",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("None",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
                
             SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Medical Note",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Lorem Ipsum is simply dummy text",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
               SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Contact Name",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Salman",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Contact Number",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("0300-1234567",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
                 SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Contact Relation",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Brother",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
               SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("State",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Punjab",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("City",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Lahore",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
             SizedBox(height: 3.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("Address",
                        fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Street 4, Iqba",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
              SizedBox(height: 3.h),
              text_widget("Pickup",
               fontSize: 13.6.sp,
                        color: Color(0xffA5A5A5),
              ),
              SizedBox(height: 2.5.h),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffDEDEDE),
                  ),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text_widget("Name",
                          fontSize: 13.6.sp,
                          color: Color(0xffA5A5A5),
                          ),
                          SizedBox(height: 1.h),
                          text_widget("Ahmed Salman",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          
                          ),
                  
                          ],
                         ),
                          Spacer(),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text_widget("Phone Number",
                          fontSize: 13.6.sp,
                          color: Color(0xffA5A5A5),
                          ),
                          SizedBox(height: 1.h),
                          text_widget("+923241234567",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          
                          ),
                          ],
                         ),
                         Spacer(),
                                                ],
                      ),
                      SizedBox(height: 1.5.h),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text_widget("Address",
                          fontSize: 13.6.sp,
                          color: Color(0xffA5A5A5),
                          ),
                          SizedBox(height: 1.h),
                          text_widget("Street 4, Iqbal Town, Lahore, Punjab",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          
                          ),
                  
                          ],
                         ),
                          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7.h),
               gradientButton("Edit Student",
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
             SizedBox(height: 2.h),
               gradientButton("Delete Student",
            font: 16,
            txtColor: MyColors.primary,
            ontap: () {
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: false,
            clr: Colors.transparent),
             SizedBox(height: 18.h),

                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}