import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/chat/chat_page.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_field.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/back.png",
                          height: 4.h,
                        ),
                        Spacer(),
                        text_widget(
                          "Inbox",
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    textFieldWithPrefixSuffuxIconAndHintText(
                      "Search here",
                      fillColor: Colors.white.withOpacity(0.14),
                      isPrefix: true,
                      hintColor: Colors.white,
                      pColor: Colors.white,
                      prefixIcon: "assets/icons/s1.png",
                      mainTxtColor: Colors.white,
                      obsecure: false,
                      radius: 40,
                      bColor: Colors.transparent,
                    ),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      onPress(
                        ontap: () {
                          setState(() {
                            current = 0;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_widget("Teachers",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: current == 0
                                    ? Colors.black
                                    : Color(0xffB5B5B5)),
                            SizedBox(height: 0.4.h),
                            SizedBox(
                                width: 26.w,
                                child: Divider(
                                  color: current == 0
                                      ? MyColors.primary
                                      : Colors.transparent,
                                  thickness: 2.45,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w),
                      onPress(
                        ontap: () {
                          setState(() {
                            current = 1;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text_widget("Parents",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: current == 1
                                    ? Colors.black
                                    : Color(0xffB5B5B5)),
                            SizedBox(height: 0.4.h),
                            SizedBox(
                                width: 26.w,
                                child: Divider(
                                  color: current == 1
                                      ? MyColors.primary
                                      : Colors.transparent,
                                  thickness: 2.45,
                                )),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/icons/add.png",
                        height: 5.h,
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  ...List.generate(4, (index) {
                    return onPress(
                      ontap: () {
                        Get.to(ChatPage());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/dp.png",
                                  height: 5.h,
                                ),
                                SizedBox(width: 3.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text_widget(
                                      "Ronaldo Seemd",
                                      fontSize: 15.5.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 0.3.h),
                                    text_widget(
                                      "Hi! How Are You Doing",
                                      fontSize: 14.sp,
                                      color: Color(0xff525252),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    text_widget(
                                      "20 min Ago",
                                      fontSize: 12.5.sp,
                                      color: Color(0xff525252),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(height: 1.h),
                                    CircleAvatar(
                                      radius: 1.h,
                                      backgroundColor: MyColors.primary,
                                      child: text_widget(
                                        "2",
                                        fontSize: 12.1.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
