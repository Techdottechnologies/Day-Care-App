import 'dart:async';
import 'dart:developer';
import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/change_password.dart';
import 'package:adunestapp/page/auth/login_page.dart';
import 'package:adunestapp/page/home/admin/bottom_nav.dart';
import 'package:adunestapp/page/home/admin/events/all_events.dart';
import 'package:adunestapp/page/home/admin/hadith_day.dart';
import 'package:adunestapp/page/home/admin/prayer_time.dart';
import 'package:adunestapp/page/home/teacher/bottom_nav.dart';
import 'package:adunestapp/widgets/txt_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:remixicon/remixicon.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

List titles = [
  "Home",
  "Events",
  "Today Hadith",
  "Prayer Time",


  // "Setting",
];

List images = [
  "assets/icons/n1.png",
  "assets/icons/d2.png",
  "assets/icons/d3.png",
  "assets/icons/d4.png",


];

class TeacherDrawer extends StatefulWidget {
  const TeacherDrawer({Key? key}) : super(key: key);

  @override
  State<TeacherDrawer> createState() => _TeacherDrawerState();
}

class _TeacherDrawerState extends State<TeacherDrawer> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerControllerT>(
      init: MyDrawerControllerT(),
      builder: (MyDrawerControllerT _) => GestureDetector(
        onTap: () {
          _.closeDrawer();
        },
        child: Stack(
          children: [
           
            Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: MyColors.primary,
                body: Builder(builder: (context) {
                  return Stack(children: [
                    ZoomDrawer(
                        disableDragGesture: false,
                        controller: _.zoomDrawerController,
                        menuScreen: DrawerScreen(setIndex: (index) {
                          setState(() {
                            currentIndex = index;
                            _.open = false;
                          });
                        }),
                        mainScreen: Builder(builder: (context) {
                          return BottomNavTeacher();
                        }),
                        borderRadius: 30,
                        // style: DrawerStyle.style2,
                        showShadow: true,
                        angle: -2,
                        slideWidth: 290,
                        shadowLayer1Color: Colors.transparent,
                        shadowLayer2Color: Colors.grey.shade100,
            
                        // slideHeight: 0,
                        menuBackgroundColor: Colors.transparent),
                    _.open
                        ? Positioned.fill(
                            child: SafeArea(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(children: [
                                            InkWell(
                                              onTap: () {
                                                _.closeDrawer();
                                              },
                                              child:Image.asset("assets/icons/back.png",height: 4.h),
                                            ),
                                            
                                          ]),
                                          SizedBox(height: 3.h),
                                          Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 0.0),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            CircleAvatar(
                                                                radius: 3.3.h,
                                                                backgroundColor:
                                                                    MyColors.white,
                                                            child: CircleAvatar(
                                                              radius: 3.1.h,
                                                              backgroundColor: Colors.transparent,
                                                               backgroundImage: AssetImage(
                                                                    "assets/images/img.png")
                                                            ),),
                                                           
                                                          ],
                                                        ),
                                                        SizedBox(width: 2.w),
                                                         Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                           children: [
                                                             text_widget("Salman Saleem",
                                                                                                                     color: Colors.white,
                                                                                                                     fontSize: 16.sp,
                                                                                                                     fontWeight: FontWeight.bold),
                                                         text_widget("#4598434",
                                                         fontSize: 13.sp,
                                                         color: Colors.white
                                                         ),
                                                           ],
                                                         )
                                                      ],
                                                    ),
                                                  
                                                   
                                                  ]))
                                        ]))))
                        : const SizedBox(),
                    _.open
                        ? Positioned.fill(
                            child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SafeArea(
                                bottom: false,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.find<MyDrawerControllerT>()
                                              .closeDrawer();
                                          Get.offAll(LoginPage());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 10),
                                          margin: const EdgeInsets.all(14.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              color:
                                                  MyColors.white,
                                             ),
                                          child: text_widget("Log Out",
                                              color: MyColors.primary,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(15.0),
                                      //   child: InkWell(
                                      //       onTap: () {
                                      //         Get.to(LoginPage());
                                      //       },
                                      //       child: Image.asset(
                                      //         "assets/icons/out1.png",
                                      //         height: 4.h,
                                      //         color: MyColors.primary,
                                      //       )),
                                      // ),
                                   
                                    ],
                                  ),
                                )),
                          ))
                        : SizedBox()
                  ]);
                })),
          ],
        ),
      ),
    );
  }

}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List pages = [
    BottomNavTeacher(),
    SizedBox(),
    SizedBox(),
    SizedBox(),


  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerControllerT>(
        init: MyDrawerControllerT(),
        builder: (MyDrawerControllerT _) => Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 74.h,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: SizedBox(
                                            width: 43.w,
                                            child: ListView.builder(
                                                // padding: EdgeInsets.zero,
                                                itemCount: titles.length,
                                                itemBuilder: (context, index) =>
                                                    InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // widget.setIndex(
                                                            //     index);

                                                            _.update();
                                                            log(_.active
                                                                .toString());
                                                                if(index==0){
                                                                  Get.find<NavControllerVendor>().selectedIndex=0;
                                                                  Get.find<MyDrawerControllerT>().closeDrawer();
                                                                }
                                                                if(index==1){
                                                                  Get.find<MyDrawerControllerT>().closeDrawer();
                                                                  Get.to(AllEvents());
                                                                }
                                                                 if(index==2){
                                                                 
                                                                  Get.find<MyDrawerControllerT>().closeDrawer();
                                                                  Get.to(HadithDay());
                                                                }
                                                                 if(index==3){
                                                                 
                                                                  Get.find<MyDrawerControllerT>().closeDrawer();
                                                                  Get.to(PrayerTimePage());
                                                                }
                                                  
                                                            _.closeDrawer();
                                                            if (_.active != 3 &&
                                                                _.active != 5 &&
                                                                _.active != 6) {
                                                            
                                                            }
                                                            ZoomDrawer.of(
                                                                    context)!
                                                                .close();
                                                            _.closeDrawer();
                                                          });
                                                        },
                                                        child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        6.0),
                                                            child: Container(
                                                                height: 4.5.h,
                                                                decoration: BoxDecoration(
                                                                    color: _.active==index?MyColors.white:Colors.transparent,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30)),
                                                                child: Row(
                                                                    children: [
                                                                      SizedBox(
                                                                          width:
                                                                              4.w),
                                                                      Image
                                                                          .asset(
                                                                        images[
                                                                            index],
                                                                        height:
                                                                            2.h,
                                                                        color:_.active==index?MyColors.primary: MyColors.white,
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              4.w),
                                                                      Text(
                                                                          titles[
                                                                              index],
                                                                          style: GoogleFonts.plusJakartaSans(
                                                                             color:_.active==index?MyColors.primary: MyColors.white,
                                                                              fontSize: 14.sp,
                                                                              fontWeight: _.active == index ? FontWeight.w600 : FontWeight.w500)),
                                                                    ]))))))))
                              ]))))
            ])));
  }
}

class MyDrawerControllerT extends GetxController {
  @override
  final zoomDrawerController = ZoomDrawerController();
  bool open = false;
  void toggleDrawer() {
    print("Toggle drawer");
    Timer(const Duration(microseconds: 30), () {
      open = true;
     

      update();
    });
    zoomDrawerController.toggle?.call();
    update();
  }

  int active = 0;

  void closeDrawer() {
    print("Close drawer");
    Timer(const Duration(microseconds: 800), () {
      open = false;
  

      update();
    });
    zoomDrawerController.close?.call();
    update();
  }
}

