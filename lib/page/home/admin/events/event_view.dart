import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/joined_users.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/map_sample.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../widgets/txt_field.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  List<String> images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  
  ];
    int current = 0;
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [
      
        Scaffold(
          backgroundColor: Color(0xffFFFFFD),
         
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Stack(
                children: [
                  Image.asset("assets/images/eimg.png",height: 40.h,width: Get.width,
                  fit: BoxFit.fill,),
                  Positioned.fill(child: Align(
                    alignment: Alignment.topCenter,
                    child:  Container(
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
                      mainAxisSize: MainAxisSize.min,
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
                            text_widget("Events",
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            ),
        
                          ],
                        ),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  ),
                ),
              ),
                  ))
                ],
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
                       gradientButton("Details",
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
            height: 4.4,
            isColor: true,
            clr:current==0? MyColors.primary:Colors.transparent),
               gradientButton("Payments",
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
            height:4.4,
            isColor: true,
            clr:current==1? MyColors.primary:Colors.transparent),
                    ],
                   )),
                  Spacer(),

                ],
              ),
            ),   SizedBox(height: 3.h),
               
   current==0?   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     Row(
            children: [
              text_widget("Naats Competition Event",
              fontWeight: FontWeight.w600,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0,vertical: 5),
                  child: text_widget("\$40",color: Colors.white,
                  fontSize: 14.5.sp,
                  fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
           ),
           SizedBox(height: 3.h),
           Row(
            children: [
              text_widget("20",
              fontSize: 13.6.sp,
              fontWeight: FontWeight.bold,
              ),
              text_widget("\t\t\tChildren pay:",
              fontSize: 13.6.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xffB8B4B4),
              ),
              SizedBox(width: 3.w),
               FlutterImageStack(
                            imageList: images,
                            showTotalCount: true,
                            totalCount: 8,
                            extraCountTextStyle: GoogleFonts.lato(
                              fontSize: 12.sp,
                            ),
                            itemRadius: 3.6.h, // Radius of each images
                            itemCount:
                                5, // Maximum number of images to be shown in stack
                            itemBorderWidth:
                                3, // Border width around the images
                          ),
                          Spacer(),
                          onPress(
                            ontap: (){
                              Get.to(JoinedUsers());
                            },
                            child: text_widget("View All",
                            color: MyColors.primary,
                            fontSize: 13.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: MyColors.primary,
                            ),
                          ),
            ],
           ),
            SizedBox(height: 3.h),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/icons/date1.png",
                                height: 3.h,
                              ),
                              SizedBox(
                                  height: 4.h,
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    dashColor: MyColors.primary,
                                  )),
                              Image.asset(
                                "assets/icons/pin1.png",
                                height: 3.h,
                              ),
                            ],
                          ),
                          SizedBox(width: 3.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text_widget(
                                "10th July, 2024 at 6:30 PM",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 4.6.h),
                              text_widget(
                                "Chicago, IL United States",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      text_widget(
                        "Description:",
                      ),
                      SizedBox(height: 1.3.h),
                      ReadMoreText(
                        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        style: GoogleFonts.lato(
                          color: Color(0xff8A8A8A)
                        ),
                        colorClickableText: Colors.pink,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: GoogleFonts.lato(
                        fontSize: 14.sp,
                        color: MyColors.primary,
                        fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2.h),
                      Divider(
                        color: Color(0xffF2F2F2),
                        thickness: 3,
                      ),
                       SizedBox(height: 3.h),
                        text_widget("Map:",
                        ),
                        SizedBox(height: 2.h),
                        Container(
                          height: 25.h,
                          child: MapSample(isPin: true),
                        ),
                        SizedBox(height: 5.h),
                         gradientButton("Edit Event",
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
                         gradientButton("Delete Event",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: Color(0xffE53935)),
          
        ],
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 8.h,
            decoration: BoxDecoration(
              color: Color(0xffEED04A),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text_widget("Total payment",
                      fontSize: 16.sp,
                      color: MyColors.white,
                      fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 0.5.h),
                      text_widget("\$21,500",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset("assets/icons/wal.png",height: 4.6.h,)
                ],
              ),
            ),
          ),
          SizedBox(height: 3.h),
          text_widget("Transactions",),
          SizedBox(height: 2.h),
        ...List.generate(4, (index){
          return   Padding(
            padding: const EdgeInsets.only(bottom:18.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffDEDEDE),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_widget("#2348023",
                        fontSize: 15.sp,
                        ),
                        SizedBox(height: 0.5.h),
                        
                        text_widget("abc123@gmail.com",
                        color: Color(0xffAEAEAE),
                        fontSize: 14.5.sp,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text_widget("23 march 2024 | 08:10 AM",
                        fontSize: 15.sp,
                        color: Color(0xffAEAEAE),
                        ),
                        SizedBox(height: 0.5.h),
                        text_widget("\$40",
                        color: MyColors.primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );

        })
        ],
      ),
                    SizedBox(height: 30.h),

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
 
 