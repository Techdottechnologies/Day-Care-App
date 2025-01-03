import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/chat/inbox.dart';
import 'package:adunestapp/page/home/admin/classes/all_curriculum.dart';
import 'package:adunestapp/page/home/admin/home_page.dart';
import 'package:adunestapp/page/home/admin/profile_page.dart';
import 'package:adunestapp/page/home/admin/subcttiption_page.dart';
import 'package:adunestapp/page/home/parent/all_classes_parent.dart';
import 'package:adunestapp/page/home/parent/parent_homePage.dart';
import 'package:adunestapp/page/home/parent/parent_profile_page.dart';
import 'package:adunestapp/page/home/teacher/all_classes_teacher.dart';
import 'package:adunestapp/page/home/teacher/teacher_homePage.dart';
import 'package:adunestapp/page/home/teacher/teacher_profile_page.dart';
import 'package:adunestapp/widgets/txt_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavParent extends StatefulWidget {
  const BottomNavParent({super.key});

  @override
  State<BottomNavParent> createState() => _BottomNavParentState();
}

class _BottomNavParentState extends State<BottomNavParent> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavControllerParent>(
        init: NavControllerParent(),
        builder: (NavControllerParent _) => Scaffold(
              backgroundColor: Colors.white,
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  _.selectedIndex == 0
                      ? ParentHomepage()
                      : _.selectedIndex == 1
                          ? AllClassesParent()
                          : _.selectedIndex == 2
                              ?  InboxPage()
                                  : _.selectedIndex == 3
                              ? SubscriptionPlan():
                                  
                                   ParentProfilePage()
                ],
              ),
              bottomNavigationBar: _.isVisible
                  ? Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 12.h,
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 50,
                                offset:
                                    Offset(0, -3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 26.0, vertical: 10),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _.onItemTapped(0);
                                    },
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: _.selectedIndex == 0
                                                ? MyColors.primary
                                                : Colors.transparent,
                                          child: Image.asset(
                                            
                                            "assets/icons/n1.png",
                                            height: 2.2.h,
                                            color: _.selectedIndex == 0
                                                ? MyColors.white
                                                : Color(0xffD0D0D0),
                                          ),
                                        ),
                                        Spacer(),
                                       text_widget("Home",fontSize: 13.5.sp,
                                           color: _.selectedIndex == 0
                                                ? MyColors.primary
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                       ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  Spacer(),  InkWell(
                                    onTap: () {
                                      _.onItemTapped(1);
                                    },
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: _.selectedIndex == 1
                                                ? MyColors.primary
                                                : Colors.transparent,
                                          child: Image.asset(
                                            
                                            "assets/icons/n2.png",
                                            height: 2.4.h,
                                            color: _.selectedIndex == 1
                                                ? MyColors.white
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                          ),
                                        ),
                                        Spacer(),
                                       text_widget("Class",fontSize: 13.5.sp,
                                           color: _.selectedIndex == 1
                                                ? MyColors.primary
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                       ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                
                                  // Spacer(),
 InkWell(
                                    onTap: () {
                                      _.onItemTapped(2);
                                    },
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: _.selectedIndex ==2
                                                ? MyColors.primary
                                                : Colors.transparent,
                                          child: Image.asset(
                                            
                                            "assets/icons/n3.png",
                                            height: 2.3.h,
                                            color: _.selectedIndex == 2
                                                ? MyColors.white
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                          ),
                                        ),
                                        Spacer(),
                                       text_widget("Inbox",fontSize: 13.5.sp,
                                           color: _.selectedIndex == 2
                                                ? MyColors.primary
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                       ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                InkWell(
                                    onTap: () {
                                      _.onItemTapped(3);
                                    },
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: _.selectedIndex ==3
                                                ? MyColors.primary
                                                : Colors.transparent,
                                          child: Image.asset(
                                            
                                            "assets/icons/n4.png",
                                            height: 2.h,
                                            color: _.selectedIndex == 3
                                                ? MyColors.white
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                          ),
                                        ),
                                        Spacer(),
                                       text_widget("Subscription",fontSize: 13.5.sp,
                                           color: _.selectedIndex == 3
                                                ? MyColors.primary
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                       ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                        Spacer(),

                                  InkWell(
                                    onTap: () {
                                      _.onItemTapped(4);
                                    },
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        CircleAvatar(
                                          backgroundColor: _.selectedIndex ==4
                                                ? MyColors.primary
                                                : Colors.transparent,
                                          child: Image.asset(
                                            
                                            "assets/icons/n5.png",
                                            height: 2.h,
                                            color: _.selectedIndex == 4
                                                ? MyColors.white
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                          ),
                                        ),
                                        Spacer(),
                                       text_widget("Profile",fontSize: 13.5.sp,
                                           color: _.selectedIndex == 4
                                                ? MyColors.primary
                                                : Color(0xff1E1E1E).withOpacity(0.30),
                                       ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ));
  }
}

class NavControllerParent extends GetxController {
  int selectedIndex = 0;
  bool isVisible = true;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
