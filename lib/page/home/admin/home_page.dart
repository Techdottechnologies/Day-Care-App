import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/forgot_password.dart';
import 'package:adunestapp/page/home/admin/classes/add_curiculam.dart';
import 'package:adunestapp/page/home/admin/drawer.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/page/home/admin/teacher/all_teacher.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFD),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:22.0,vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          onPress(
                            ontap: (){
                              Get.find<MyDrawerController>().toggleDrawer();
                              Get.find<MyDrawerController>().update();

                            },
                            child: Image.asset("assets/images/draw.png",height: 2.4.h,)),
                          Spacer(),
                          Stack(
                            children: [
                              Image.asset("assets/icons/bdp.png",height: 8.h),
                              Positioned.fill(child: Align(
                                child: Image.asset("assets/icons/dp.png",height: 4.5.h,),
                              ))
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(height: 1.h),
                      text_widget("Hello Salman,",
                      color: Colors.white,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                      ),
                      text_widget("Manage your daycare through our platform!",
                      fontSize: 14.sp,
                      color: Color(0xffFFFFFD).withOpacity(0.65),
                      ),
                      SizedBox(height: 3.h),
                                 Container(
          child: CarouselSlider(
            
        options: CarouselOptions(
           onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          
          autoPlay: true,
        ),
        items: imageSliders,
      )),   
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width:_current== entry.key ?8.w: 12.0,
                height: 6.6,
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape:_current== entry.key ?BoxShape.rectangle: BoxShape.circle,
                    borderRadius:_current== entry.key ? BorderRadius.circular(12):null,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.white)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),  ),
                      SizedBox(height: 3.h),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
              children: [
                Expanded(child: onPress(
                  ontap: (){
                    Get.to(AllStudents());
                  },
                  child: Image.asset("assets/images/student.png",height:15.h,))),
                Expanded(child: onPress(
                  ontap: (){
                    Get.to(AllTeacher());
                  },
                  child: Image.asset("assets/images/teacher.png",height:15.h,))),
                Expanded(child: onPress(
                  ontap: (){
                    Get.to(AddCuriculam());
                  },
                  child: Image.asset("assets/images/addc.png",height:15.h,))),

              ],
            ),
            SizedBox(height: 3.h),
Row(
  children: [
    text_widget("Key Metrics",
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    ),
    Spacer(),
    text_widget("See All",
    color: MyColors.primary,
    fontSize: 15.sp,
    decoration: TextDecoration.underline,
    decorationColor: MyColors.primary,
    ),
  ],
),
SizedBox(height: 3.h),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      Stack(
        children: [
          Image.asset("assets/images/key1.png",height: 14.h,width: 14.h,fit: BoxFit.cover,),
          Positioned.fill(
            top: 1.4.h,
            child: Align(
            alignment: Alignment.topCenter,
            child: text_widget("90%",
            fontSize: 18.5.sp,
            ),
          ))
        ],
      ),
      SizedBox(width: 3.w),
      Stack(
        children: [
          Image.asset("assets/images/key2.png",height: 14.h,width: 14.h,fit: BoxFit.cover,),
          Positioned.fill(
            top: 1.4.h,
            child: Align(
            alignment: Alignment.topCenter,
            child: text_widget("70%",
            fontSize: 18.5.sp,
            ),
          ))
        ],
      ),
      SizedBox(width: 3.w),
      Stack(
        children: [
          Image.asset("assets/images/key3.png",height: 14.h,width: 14.h,fit: BoxFit.cover,),
          Positioned.fill(
            top: 1.4.h,
            child: Align(
            alignment: Alignment.topCenter,
            child: text_widget("50%",
            fontSize: 18.5.sp,
            ),
          ))
        ],
      )
    ],
  ),
),
            SizedBox(height: 13.h),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}