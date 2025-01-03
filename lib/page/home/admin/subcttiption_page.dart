import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/payment_done.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/txt_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SubscriptionPlan extends StatefulWidget {
  const SubscriptionPlan({super.key});

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

int currentPage = 0;

class _SubscriptionPlanState extends State<SubscriptionPlan> {
  List<Widget> cards = [
    CardFb1(
        text: "Monthly package",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Working_late_re_0c3y%201.png?alt=media&token=7b880917-2390-4043-88e5-5d58a9d70555",
        subtitle: "Lorem Ipsum is simply",
        onPressed: () {}),
    CardFb1(
        text: "Monthly package",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Designer_re_5v95%201.png?alt=media&token=5d053bd8-d0ea-4635-abb6-52d87539b7ec",
        subtitle: "One Day Boost Packages",
        onPressed: () {}),
  ];

  final double carouselItemMargin = 4;

  int _position = 0;
  late PageController _pageController;

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        return Container(
          // margin: EdgeInsets.all(carouselItemMargin),
          child: widget,
        );
      },
      child: Container(
        child: Center(child: cards[position]),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8,);
  }

  List<bool> faqs = [false, false, false, false, false];
  bool status4 = false;
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFD),
      body: Column(
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
                        Image.asset("assets/icons/back.png",height: 4.h,),
                        Spacer(),
                        text_widget("Subscription",
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
          // SizedBox(height: 3.h),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           
                  Expanded(
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: cards.length,
                          onPageChanged: (int position) {
                            setState(() {
                              _position = position;
                              currentPage = position;
                            });
                            setState(() {});
                          },
                          itemBuilder: (BuildContext context, int position) {
                             
                                
                                        var scale =
                                           currentPage==
                                                    position
                                                ? 1.0
                                                : 0.8;
          
                                        return TweenAnimationBuilder(
                                          tween: Tween(
                                              begin: scale, end: scale),
                                          duration: const Duration(
                                              milliseconds: 350),
                                        child: 
                                        imageSlider(position),
                                         builder: (context, double value,
                                              child) {
                                            return Transform.scale(
                                              scale: value,
                                              child: child,
                                            );
                                          },
                                        );
                            // imageSlider(position);
                          })),
                  SizedBox(height: 2.h),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                          dotHeight: 1.5.h,
                          dotWidth: 1.5.h,
                          dotColor: MyColors.primary.withOpacity(0.2),
                          activeDotColor: MyColors.primary),
                    ),
                  ),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        
        // width: 750,
        // width: 100.w,
        width: Get.width,
        // height: 230,
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
        decoration: BoxDecoration(
          // color: Colors.white,
          image: DecorationImage(image: AssetImage("assets/images/sub.png"),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            text_widget(
              text,
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 0.5.h),
            text_widget(subtitle,  color: Colors.white,fontSize: 15.sp),
            SizedBox(height: 2.5.h),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                text_widget(
                  "\$4.45",
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
                text_widget(
                  "/Package",
                  fontSize: 15.sp,
       color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Divider(
           color: Colors.white.withOpacity(0.5),
            ),
            SizedBox(height: 3.h),
            ...List.generate(
              txts.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 0.4.h,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: text_widget(txts[index],
                          color: Colors.white,
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Center(
              child: gradientButton("Choose Plan", ontap: () async {
                Get.to(PaymentDone());
              },
                  height: 4.8,
                  font: 13.5,
                  radius: BorderRadius.circular(40),
                  width: 60,
                  isColor: true,
                  clr: Color(0xffEED04A)),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}

List txts = [
  "Lorem Ipsum is simply",
  "Lorem Ipsum is simply",
  
  "24-Hour Visibility",
  "Instant Visibility",
  "Short-Term Impact",
  "Memorable Impression",

  
];
