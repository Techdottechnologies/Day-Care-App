import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/chat/bubble.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildMessageComposer(controller: cont, context),
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
                        SizedBox(width: 4.w),
                        Image.asset(
                          "assets/icons/online.png",
                          height: 6.h,
                        ),
                        SizedBox(width: 3.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text_widget(
                              "Jhon Abraham",
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            text_widget(
                              "Online",
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Remix.more_2_line,
                          color: Colors.white,
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
          Expanded(child: _messagesWithUserInfo(context))
        ],
      ),
    );
  }

  Widget _messagesWithUserInfo(
    BuildContext context,
  ) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          // isService?    serviceWidget(context,isPrice: false,isEdit: false):SizedBox(),
          SizedBox(height: 3.h),
          text_widget("Today", fontSize: 15.sp),
          _buildContainer(context)
        ]),
      );

  Widget _buildContainer(BuildContext context) => Expanded(
      child: Container(
          padding: const EdgeInsets.only(top: 18),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: _messagesList(context)));

  Widget _messagesList(BuildContext context) => ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) => Bubble(
            index == 1 || index == 3 || index == 6,
            index,
            voice: index == 1 || index == 2,
          ));

  _buildMessageComposer(context, {controller}) {
    return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SafeArea(
          top: false,
          child: SizedBox(
              width: 100.w,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 1,
                          shadowColor: Colors.grey.shade300,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp, color: Colors.black),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade100)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.grey)),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                prefixIconConstraints:
                                    BoxConstraints(minWidth: 8.w),
                                suffixIconConstraints:
                                    BoxConstraints(minWidth: 8.w),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Image.asset(
                                            "assets/icons/cam.png",
                                            height: 2.5.h,
                                          )),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Image.asset(
                                            "assets/icons/mic.png",
                                            height: 2.5.h,
                                          )),
                                    ),
                                  ],
                                ),
                                hintText: "Message....",
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54, fontSize: 15.sp),
                              )),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Image.asset(
                        "assets/icons/send.png",
                        height: 5.6.h,
                      )
                    ],
                  ))),
        ));
  }
}
