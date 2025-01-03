import 'dart:developer';

import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/login_page.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int selectPage=0;
  PageController controller =PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:28.0),
              child: FadeInDown(
                delay: Duration(milliseconds: 200),
                child: Image.asset("assets/icons/logo.png",height: 5.4.h,)),
            ),
            Expanded(
              child: Container(
                color: MyColors.primary,
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 4.h),
                      FadeInDown(
                delay: Duration(milliseconds: 250),
                        
                        child: Image.asset("assets/images/img.png")),
                      // Spacer(),
                      SizedBox(height: 4.h),
                
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:40.0),
                       child: FadeInDown(
                        delay: Duration(milliseconds: 500),
                         child: Container(
                          height: 20.h,
                          child: PageView(
                            controller: controller,
                            onPageChanged: (value) {
                              setState(() {
                                selectPage=value;
                              });
                            },
                            children: [
                              FadeIn(
                                child: Column(
                                  children: [
                                        Center(
                                                      child: text_widget("Find out about the best teacher for you",
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 19.sp,
                                                      color: Colors.white,
                                                      textAlign: TextAlign.center
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Center(
                                                      child: SizedBox(
                                width: 85.w,
                                child: text_widget("We can find a suitable teacher for you in the field you like for better learning, as well as quality learning.",
                                color: Colors.white.withOpacity(0.80),
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                textAlign: TextAlign.center
                                
                                ),
                                                      ),
                                                    ),
                                  ],
                                ),
                              ),
                                 FadeIn(
                                child: Column(
                                  children: [
                                        Center(
                                                      child: text_widget("Find out about the best teacher for you",
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 19.sp,
                                                      color: Colors.white,
                                                      textAlign: TextAlign.center
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Center(
                                                      child: SizedBox(
                                width: 85.w,
                                child: text_widget("We can find a suitable teacher for you in the field you like for better learning, as well as quality learning.",
                                color: Colors.white.withOpacity(0.80),
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                textAlign: TextAlign.center
                                
                                ),
                                                      ),
                                                    ),
                                  ],
                                ),
                              ),
                                  FadeIn(
                                child: Column(
                                  children: [
                                        Center(
                                                      child: text_widget("Find out about the best teacher for you",
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 19.sp,
                                                      color: Colors.white,
                                                      textAlign: TextAlign.center
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Center(
                                                      child: SizedBox(
                                width: 85.w,
                                child: text_widget("We can find a suitable teacher for you in the field you like for better learning, as well as quality learning.",
                                color: Colors.white.withOpacity(0.80),
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                textAlign: TextAlign.center
                                
                                ),
                                                      ),
                                                    ),
                                  ],
                                ),
                              ),
                               
                            ]
                          ),
                         ),
                       ),
                     ),
                      SizedBox(height: 2.h),
                      FadeInRight(
                        delay: Duration(milliseconds: 840),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:22.0),
                          child: Row(
                            children: [
                              onPress(
                                ontap: (){
                                  if(selectPage==0){
                                      //  Get.to(ChooseInterestPage());
                                        }
                                      else{
                                      setState(() {
                                          selectPage--;
                          
                                        });
                                      controller.animateToPage(selectPage, duration: Duration(microseconds: 100), curve: Curves.linear);
                                  
                               log(selectPage.toString());
                                      }
                                },
                                child:text_widget("Prev",
                                color: Colors.white.withOpacity(0.80),
                                fontSize: 15.6.sp,
                                ),),
                                 Spacer(),
                               FadeInRight(
                                
                                 child: SmoothPageIndicator(  
                                         controller: controller,  
                                         count:  3,  
                                         axisDirection: Axis.horizontal,  
                                         effect:  ExpandingDotsEffect(
                                          dotColor: Colors.grey.withOpacity(0.5),
                                          activeDotColor: MyColors.white,
                                          dotHeight: 1.h,
                                          dotWidth: 1.h
                                         ),),
                               ),
                                 Spacer(),
                           
                              onPress(
                              ontap: (){
                               if(selectPage==2){
                                       Get.to(LoginPage());
                                        }
                                      else{
                                      setState(() {
                                          selectPage++;
                          
                                        });
                                      controller.animateToPage(selectPage, duration: Duration(microseconds: 100), curve: Curves.linear);
                                  
                               log(selectPage.toString());
                                      }
                              },
                              child: text_widget("Next",
                                color: Colors.white,

                                fontSize: 15.6.sp,
                                ),
                            ),
                          ],
                          ),
                        ),
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}