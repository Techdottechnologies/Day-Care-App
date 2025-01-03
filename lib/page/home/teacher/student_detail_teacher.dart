import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/payment_done.dart';
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

class StudentDetailTeacher extends StatefulWidget {
  const StudentDetailTeacher({super.key});

  @override
  State<StudentDetailTeacher> createState() => _StudentDetailTeacherState();
}

class _StudentDetailTeacherState extends State<StudentDetailTeacher> {
 int current = 0;
 late DateTime _selectedDate;
  late List<DateTime> _eventDates;
   List<String> txts1 = [
    "Present",
     "Absent",


      ];
      String selectValue1="Present";
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
                        text_widget("Student Details",
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
                                     child: gradientButton("Tasks",
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
                  CalendarTimeline(
              showYears: false,
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
              eventDates: _eventDates,
              onDateSelected: (date) => setState(() => _selectedDate = date),
              leftMargin: 12,
              
              monthColor: MyColors.primary,
              dayColor: Colors.black,
              
              dayNameColor:  Colors.white,
              activeDayColor: Colors.white,

              activeBackgroundDayColor: MyColors.primary,
              dotColor: Colors.white,
              
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en',
            ),
            SizedBox(height: 3.h),
              text_widget("Attendance",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
            customDropDown(txts1,"Select",selectValue1, (value) {
                   setState(() {
                                selectValue1 = value!;
                                
                              });
                }),
                              SizedBox(height: 2.h),
                          selectValue1=='Present'?Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [     text_widget("Check-in Time",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Select time",
                                             fillColor: Color(0xffFAFAFA),
                                             
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
                                            SizedBox(height: 2.h),
                               text_widget("Check-out Time",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Select time",
                                             fillColor: Color(0xffFAFAFA),
                                             
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
                        SizedBox(height: 2.h),],
                          ):SizedBox(),
                               text_widget("Any Note",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Write here",
                                             fillColor: Color(0xffFAFAFA),
                                             
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
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
SizedBox(height: 24.h),
               
                ],
              ):
              current==1?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           
                  SizedBox(height: 1.h),
                      ...List.generate(2, (index){
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
            
                }),
                SizedBox(height: 2.h),
                  text_widget("Today Progress",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Write here",
                                             fillColor: Color(0xffFAFAFA),
                                             line: 5,
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 20,
                                             bColor: Colors.transparent,
                                           ),
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
SizedBox(height: 24.h),
               
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
                      current1==1?     Column(
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
                         color: current1==0?Colors.black:Color(0xffA5A5A5),
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                      current1==1?text_widget("Subject to these terms, Edunest grants you a non-exclusive, non-transferable, limited license to use the app for personal, non-commercial purposes. This license is conditional on your compliance with these terms and conditions.",
                                      fontSize: 13.sp,
                                      ):     textFieldWithPrefixSuffuxIconAndHintText(
                                             "Write here",
                                             fillColor: Color(0xffFAFAFA),
                                             line: 5,
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 20,
                                             bColor: Colors.transparent,
                                           ),
                                                 SizedBox(height: 6.h),
             current1==0?   Row(
                  children: [
                    Expanded(
                      child: gradientButton("Mark Complete",
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
                                  
                    ),
                    SizedBox(width: 2.w),
                      Expanded(
                      child: gradientButton("Save",
                                  font: 16,
                                  txtColor: MyColors.white,
                                  ontap: () {
                                  //  _.loginUser();
                                  },
                                  width: 90,
                                  radius: BorderRadius.circular(40),
                                  height: 4.5,
                                  isColor: true,
                                  clr: MyColors.primary),),
                  ],
                ): gradientButton("Completed",
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

