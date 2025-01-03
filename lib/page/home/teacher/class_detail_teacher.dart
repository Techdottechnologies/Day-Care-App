import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/page/home/teacher/student_detail_teacher.dart';
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

class ClassDetailTeacher extends StatefulWidget {
  const ClassDetailTeacher({super.key});

  @override
  State<ClassDetailTeacher> createState() => _ClassDetailTeacherState();
}

class _ClassDetailTeacherState extends State<ClassDetailTeacher> {
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
                        child: gradientButton("Students",
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
                                       child: gradientButton("Daily Lesson",
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
               Row(
                    children: [
                      onPress(
                        ontap: (){
                          setState(() {
                            current1=0;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_widget("Present",
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_widget("Absent",
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

               Expanded(child: MonthDropdown()),

                    ],
                  ),
                  SizedBox(height: 3.h),
                   
                    GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          padding: EdgeInsets.zero,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(4, (index) {
              return onPress(
                ontap: (){
                  Get.to(StudentDetailTeacher());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                       Image.asset("assets/icons/img1.png",height: 8.h,),
                                SizedBox(height: 0.4.h),
                                text_widget("#234567",
                                    fontSize: 13.3.sp,
                                    color: Color(0xffA5A5A5),
                                    fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 0.2.h),
                                    text_widget("Salman Saleem",
                                    fontSize: 15.6.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                    
                                    ),
                      Spacer(),
                
                    ],
                  ),
                ),
              );
            },),)
                ],
              ):
              current==1?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CalendarScreen(),
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
                               text_widget("Assign Teacher",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("Salman Saleem",
                            fontSize: 15.sp,
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
               
          current1==0?     Container(
                height: 20.h,
               
                 child: Padding(
                  padding: EdgeInsets.zero,
                   child: SfRadialGauge(
                    
                    axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            radiusFactor: 1,
                            // centerX: 0.1,
                            // canScaleToFit: true,
                            // centerY: 0.4,
                            
                            showLabels: false,
                            showTicks: false,
                            annotations: <GaugeAnnotation>[
                     GaugeAnnotation(
                     positionFactor: 0.1,
                     angle: 90,
                     widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: text_widget("Task Completed by",fontSize: 13.4.sp),
                          ),
                          SizedBox(height: 0.6.h),
                          Center(
                            child: text_widget("80%",
                            fontWeight: FontWeight.w600,
                            fontSize: 21.sp,
                            ),
                          ),
                        ],
                      ),)
                     ],
                        pointers: <GaugePointer>[
                     RangePointer(
                     value: 50,
                     cornerStyle: CornerStyle.bothCurve,
                     width: 0.2,
                     sizeUnit: GaugeSizeUnit.factor,
                     color: MyColors.primary,
                      )
                     ],
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.2,
                              cornerStyle: CornerStyle.bothCurve,
                              color: Color.fromARGB(30, 0, 169, 181),
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                          )
                        ]),
                 ),
               ):SizedBox(),
      
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
                               text_widget("Assign Teacher",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("Salman Saleem",
                            fontSize: 15.sp,
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
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            
                            ),
                            ],
                           ),
                           Spacer(),
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
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               text_widget("Students Complete",
                            fontSize: 13.6.sp,
                            color: Color(0xffA5A5A5),
                            ),
                            SizedBox(height: 1.h),
                            text_widget("24/30",
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
