import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/auth/forgot_password.dart';
import 'package:adunestapp/page/home/teacher/class_detail_teacher.dart';
import 'package:adunestapp/page/home/teacher/drawer.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class TeacherHomepage extends StatefulWidget {
  const TeacherHomepage({super.key});

  @override
  State<TeacherHomepage> createState() => _TeacherHomepageState();
}

class _TeacherHomepageState extends State<TeacherHomepage> {
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
                              Get.find<MyDrawerControllerT>().toggleDrawer();
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
                  text_widget("Upcoming Class",
                  fontWeight: FontWeight.w700,

                  ),
                  SizedBox(height: 2.h),
             ...List.generate(4, (index){
          return   onPress(
            ontap: (){
              Get.to(ClassDetailTeacher());
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom:18.0),
              child: Container(
                decoration: BoxDecoration(
                  
                    color:index==1?Color(0xff9BC851):index==2?Color(0xffEED04A):index==3?Color(0xff593FBE): Color(0xffDF7778),
                  
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text_widget("Assign Class",
                          fontSize: 14.5.sp,
                          color: Colors.white,
                          
                          ),
                          SizedBox(height: 0.5.h),
                          
                          text_widget("Quran",
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text_widget("Time",
                          fontSize: 15.sp,
                          color: Colors.white,
                          ),
                          SizedBox(height: 0.5.h),
                          text_widget("08:00 AM to 10:00 AM",
                          color: MyColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );

        }),
                  SizedBox(height: 16.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}