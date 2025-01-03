import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/calender.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/month.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../widgets/txt_field.dart';

class ClassDetailParent extends StatefulWidget {
  const ClassDetailParent({super.key});

  @override
  State<ClassDetailParent> createState() => _ClassDetailParentState();
}

class _ClassDetailParentState extends State<ClassDetailParent> {
 int current = 0;
 late DateTime _selectedDate;
  late List<DateTime> _eventDates;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }
  void _resetSelectedDate() {
    _selectedDate = DateTime.now();
    _eventDates = [
      
    ];
  }
 int current1 = 0;
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
                        text_widget("Class Details",
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
                     borderRadius: BorderRadius.circular(40)
                   ),
                   child: Row(
                   children: [
                      Expanded(
                        child: gradientButton("Attendance",
                                    font: 14.5,
                                    txtColor:current==0? MyColors.white:Color(0xff747474),
                                    ontap: () {
                                      setState(() {
                                        current=0;
                                      });
                                      print(current);
                                    //  _.loginUser();
                                    },
                                    width: 40,
                                    radius: BorderRadius.circular(40),
                                    height: 5,
                                    isColor: true,
                                    clr:current==0? MyColors.primary:Colors.transparent),
                      ),
                                     Expanded(
                                       child: gradientButton("Today Lesson",
                            font: 14.5,
                            txtColor:current==1? MyColors.white:Color(0xff747474),
                            ontap: () {
                              setState(() {
                                        current=1;
                              });
                                      print(current);

                            //  _.loginUser();
                            },
                            width: 40,
                            radius: BorderRadius.circular(40),
                            height: 5,
                            isColor: true,
                            clr:current==1? MyColors.primary:Colors.transparent),
                                     ),
                          Expanded(
                                     child: gradientButton("Task",
                          font: 14.5,
                          txtColor:current==2? MyColors.white:Color(0xff747474),
                          ontap: () {
                                      setState(() {
                                        current=2;
                                      });
                                      print(current);

                          //  _.loginUser();
                          },
                          width: 40,
                          radius: BorderRadius.circular(40),
                          height: 5,
                          isColor: true,
                          clr:current==2? MyColors.primary:Colors.transparent),
                          ),
                   ],
                  )),
                  SizedBox(height: 3.h),
         current==0?     Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    CalendarScreen(),
                  SizedBox(height: 2.h),
                  text_widget("Attendance",
                  fontSize: 14.sp,
                  color: MyColors.primary,
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 5.6.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        text_widget("Present",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 2.h),
                  text_widget("Checkin Time",
                  fontSize: 14.sp,
                  color: MyColors.primary,
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 5.6.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        text_widget("08:00 AM",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                     SizedBox(height: 2.h),
                  text_widget("Checkout Time",
                  fontSize: 14.sp,
                  color: MyColors.primary,
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 5.6.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        text_widget("08:00 AM",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 2.h),
                  text_widget("Any Note",
                  fontSize: 14.sp,
                  color: MyColors.primary,
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 5.6.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.w),
                        text_widget("Arrived Timely",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),

                ],
              ):
              current==1?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CalendarScreen(),
                  SizedBox(height: 3.h),
                  text_widget("Children Progress",
                  fontSize: 14.sp,
                  color: Color(0xffA5A5A5),
                  ),
                  SizedBox(height: 1.h),
                  text_widget("Subject to these terms, Edunest grants you a non-exclusive, non-transferable, limited license to use the app for personal, non-commercial purposes. This license is conditional on your compliance with these terms and conditions.",
                  fontSize: 14.sp,
                  ),
                  SizedBox(height: 3.h),

                      ...List.generate(3, (index){
                  return       Padding(
                    padding: const EdgeInsets.only(bottom:14.0),
                    child:
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
                                   text_widget("Title",
                                fontSize: 13.6.sp,
                                color: Color(0xffA5A5A5),
                                ),
                                SizedBox(height: 1.h),
                                text_widget("Dua for drinking milk",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                
                                ),
                                               
                                ],
                               ),
                             
                              
                           ],
                         ),
                        SizedBox(height: 1.5.h),

                        Row(
                          children: [
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Due Date",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("23 march 2024",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                    
                            ],
                           ),
                         
                           Spacer(),
                                                  ],
                        ),
                        SizedBox(height: 1.5.h),

                       text_widget("Resources",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                        SizedBox(height: 1.5.h),
                        Row(
                          children: [
                            Image.asset("assets/images/dua.png",height: 9.h,),
                            SizedBox(width: 4.w),
                            Image.asset("assets/images/dua.png",height: 9.h,),

                          ],
                        ),

                            
                      ],
                    ),
                                    ),
                                  ),
                  );
            
                })
                ],
              ):Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      onPress(
                        ontap: (){
                          setState(() {
                            current1=0;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text_widget("OnGoing Tasks",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: current1==0?Colors.black:Color(0xffB5B5B5)
                            ),
                            SizedBox(height: 0.4.h),
                            SizedBox(
                              width: 26.w,
                              child: Divider(
                                color:current1==0? MyColors.primary:Colors.transparent,
                                thickness: 2.45,
                              )),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w),
                       onPress(
                        ontap: (){
                          setState(() {
                            current1=1;
                          });
                        },
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text_widget("Previous Tasks",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                             color: current1==1?Colors.black:Color(0xffB5B5B5)
                            ),
                            SizedBox(height: 0.4.h),
                            SizedBox(
                              width: 26.w,
                              child: Divider(
                                color:current1==1? MyColors.primary:Colors.transparent,
                                thickness: 2.45,
                              )),
                          ],
                                               ),
                       ),
                      SizedBox(width: 5.w),

                current1==1?  Expanded(child: MonthDropdown()):SizedBox(),

                    ],
                  ),
              current1==1?    SizedBox(height: 2.h):SizedBox(),
               current1==1?      textFieldWithPrefixSuffuxIconAndHintText(
                                             "Search here",
                                             fillColor: Color(0xffF9F9F9),
                                             isPrefix: true,
                                             hintColor: Color(0xffA8A8A8),
                                             pColor: Color(0xffA8A8A8),
                                             prefixIcon: "assets/icons/s1.png",
                                             mainTxtColor: Colors.white,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ):SizedBox(),
                  SizedBox(height: 3.h),

                   Padding(
                    padding: const EdgeInsets.only(bottom:14.0),
                    child:
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
                                   text_widget("Title",
                                fontSize: 13.6.sp,
                                color: Color(0xffA5A5A5),
                                ),
                                SizedBox(height: 1.h),
                                text_widget("Dua for drinking milk",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                
                                ),
                                               
                                ],
                               ),
                             
                              
                           ],
                         ),
                      SizedBox(height: 1.5.h),

                        Row(
                          children: [
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Due Date",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("23 march 2024",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                    
                            ],
                           ),
                            Spacer(),
                        current1==1?   Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Complete Date",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("23 march 2024",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                            ],
                           ):SizedBox(),
                           Spacer(),
                                                  ],
                        ),
                        SizedBox(height: 1.5.h),

                       text_widget("Resources",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                        SizedBox(height: 1.5.h),
                        Row(
                          children: [
                            Image.asset("assets/images/dua.png",height: 9.h,),
                            SizedBox(width: 4.w),
                            Image.asset("assets/images/dua.png",height: 9.h,),

                          ],
                        ),
                        SizedBox(height: 2.h),
                          text_widget("Progress",
                              
                         
                         fontSize:14.sp,
                         color: Color(0xffA5A5A5),
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                   text_widget("Subject to these terms, Edunest grants you a non-exclusive, non-transferable, limited license to use the app for personal, non-commercial purposes. This license is conditional on your compliance with these terms and conditions.",
                                      fontSize: 13.sp,
                                      ),
                       current1==1?Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(height: 3.5.h),

                        gradientButton("Completed",
                                  font: 14,
                                  txtColor: MyColors.white,
                                  ontap: () {
                                  //  _.loginUser();
                                  },
                                  width: 90,
                                  radius: BorderRadius.circular(40),
                                  height: 4.5,
                                  isColor: true,
                                  clr: Color(0xffEED04A)),
                            
                        SizedBox(height: 1.5.h),
                     
                        ],
                       ):SizedBox(),
                     
                        ],
                    ),
                                    ),
                                  ),
                  )
                ],
              ),
SizedBox(height: 20.h,)
              ],
              ),
            ),
          )),
        ],
      )

    );
}
  }




Widget selectPopup() => Theme(
  data: ThemeData(
    dividerTheme: DividerThemeData(
            color: Color(0xffF5F5F5),
          ),

  ),
  child: PopupMenuButton<int>(
        color: Colors.white,
        
      
        // constraints: BoxConstraints.expand(width: 37.w, height: 6.6.h),
        // surfaceTintColor: Colors.red,
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 1.w),
               CircleAvatar(
                backgroundImage: AssetImage("assets/icons/dp.png"),
               ),
                SizedBox(width: 3.w),
                text_widget("Salam Saleem", fontWeight: FontWeight.w300, fontSize: 16.sp),
              ],
            ),
          ),
          PopupMenuDivider(
            
            
          ),
            PopupMenuItem(
            value: 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 1.w),
               CircleAvatar(
                backgroundImage: AssetImage("assets/icons/dp.png"),
               ),
                SizedBox(width: 3.w),
                text_widget("Salam Saleem", fontWeight: FontWeight.w300, fontSize: 16.sp),
              ],
            ),
          ),
         
        ],
        // initialValue: 0,
        onCanceled: () {},
        onSelected: (value) {
          Get.back();
          // value==1?setState(() {
          //   isEdit=true;
          // }):  Get.to(PopupView(index: 3,),transition: Transition.fadeIn);
          // print(value);
        },
        icon:  Row(
          children: [
             CircleAvatar(
                backgroundImage: AssetImage("assets/icons/dp.png"),
               ),
               SizedBox(width: 2.w),
               Image.asset("assets/icons/down.png",height: 3.h,)
          ],
        ),
        offset: const Offset(0, 80),
      ),
);
