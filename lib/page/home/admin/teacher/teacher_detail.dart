  import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/chat/chat_page.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/pop.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class TeacherDetail extends StatefulWidget {
  const TeacherDetail({super.key});

  @override
  State<TeacherDetail> createState() => _TeacherDetailState();
}

class _TeacherDetailState extends State<TeacherDetail> {
  int current = 0; 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFD),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:   gradientButton("Assign Class",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
            showDialog(
            useSafeArea: false,
            context: context,
            barrierDismissible: true,
            
            barrierColor: MyColors.black.withOpacity(0.8),
            builder: (context) => Confirm3());
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
    
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
                        text_widget("Teacher Details",
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        ),

                      ],
                    ),
                    SizedBox(height: 5.h),
                     Row(
                      children: [
                                  Image.asset("assets/icons/chat.png",height: 5.h,color: Colors.transparent,),

                        Spacer(),
                        Container(
                          
                        child: Column(
                          children: [
                              Image.asset("assets/images/dp1.png",height: 8.h,),
                              SizedBox(height: 1.h),
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
                          ],
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
            Center(
              child: Row(
                children: [
                  Spacer(),
                   Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                    children: [
                       gradientButton("Info",
            font: 15,
            txtColor:current==0? MyColors.white:Color(0xff747474),
            ontap: () {
              setState(() {
                current=0;
              });
            //  _.loginUser();
            },
            width: 40,
            radius: BorderRadius.circular(40),
            height: 5,
            isColor: true,
            clr:current==0? MyColors.primary:Colors.transparent),
               gradientButton("Schedule",
            font: 15,
            txtColor:current==1? MyColors.white:Color(0xff747474),
            ontap: () {
              setState(() {
                current=1;
              });
            //  _.loginUser();
            },
            width: 40,
            radius: BorderRadius.circular(40),
            height: 5,
            isColor: true,
            clr:current==1? MyColors.primary:Colors.transparent),
                    ],
                   )),
                  Spacer(),

                ],
              ),
            ),
            SizedBox(height: 3.h),
           current==0?Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                text_widget("Gender",
                        fontSize: 14.3.sp,
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
                         SizedBox(height: 3.h),
             text_widget("Qualification",
                        fontSize: 14.3.sp,
                        color: Color(0xffA5A5A5),
                        ),
                        SizedBox(height: 1.h),
                        text_widget("Quran Instructor",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        
                        ),
                        SizedBox(
                          height: 2.h,
                          child: Divider(
                            color: Color(0xffEBEBEB),
                            
                          ),
                        ),
                        SizedBox(height: 3.h),
                         text_widget("Qualification Documents",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        
                        ),
                        SizedBox(width: 28.w,
                        child: Divider(
                          color: MyColors.primary,
                          thickness: 3,
                        ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            Image.asset("assets/images/doc.png",height: 8.h,),
                         SizedBox(width: 3.w),
                            Image.asset("assets/images/doc.png",height: 8.h,)

                          ],
                        ),

            ],
           ):Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           ...List.generate(3, (index){
            return    Padding(
              padding: const EdgeInsets.only(bottom:15.0),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffDEDEDE),
                    ),
                    borderRadius: BorderRadius.circular(20)
              
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:22.0,vertical: 12),
                    child: Row(
                      children: [
                        
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Assign Class",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("Quaran",
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                            ],
                           ),
                           Spacer(),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Time",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("08:00 AM to 10:00 AM",
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                            ],
                           ),
                           Spacer(),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/icons/edit.png",height: 2.6.h,),
                              SizedBox(height: 1.h),
                              Image.asset("assets/icons/del.png",height: 2.6.h,),
                    
                            ],
                           )
                    
                      ],
                    ),
                  ),
                ),
            );
           
           })
            ],
           )
                      ],
         ),
            ),
          ))
        ],
      ),
    );
  }
}