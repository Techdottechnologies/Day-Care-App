import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/add_hadith.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class HadithDay extends StatefulWidget {
  const HadithDay({super.key});

  @override
  State<HadithDay> createState() => _HadithDayState();
}

class _HadithDayState extends State<HadithDay> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
         Image.asset("assets/images/lbg.png",fit: BoxFit.fill,height: Get.height,width: Get.width,),
       
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:    gradientButton("Add Hadith",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.to(AddHadith());
             
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: true,
            clr: MyColors.primary),
         
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/icons/had.png"),
                Positioned.fill(child:  Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:22.0),
                      child: Row(
                                children: [
                                  onPress(
                                    ontap: (){
                                      Get.back();
                                    },
                                    child: Image.asset("assets/icons/back.png",height: 4.h,)),
                                  Spacer(),
                                  text_widget("Hadith of the Day",
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                    ),
                  ),
                ),)
                ],
              ),
              SizedBox(height: 3.h),
                             Expanded(
                               child: SingleChildScrollView(
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(horizontal:22.0),
                                   child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text("اللّهُـمَّ لَـكَ الحَـمْـدُ أنْـتَ كَسَـوْتَنيهِ، أََسْأََلُـكَ مِـنْ خَـيرِهِ وَخَـيْرِ مَا صُنِعَ لَـه، وَأَعوذُ بِكَ مِـنْ شَـرِّهِ وَشَـرِّ مـا صُنِعَ لَـهُ",
                                       style: GoogleFonts.notoNaskhArabic(
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.primary,
                                        fontSize: 17.5.sp,
                                   
                                   
                                       ),
                                       ),
                                       SizedBox(height: 3.h),
                                       text_widget("Allahumma laka-I-hamdu Anta kasawtanth, as'aluka min khayrihi wa khayri ma suni a lah, wa a'üdhu bika min sharrihi wa sharri mã suni a lah.",
                                       color: Color(0xff8F8F8F),
                                       fontSize: 16.sp,
                                       ),
                                       SizedBox(height: 2.5.h),
                                       text_widget("O Allah, all praise is for You Alone — You have clothed me with it. I ask You for its good and the good of that for which it was made; and I seek Your protection from its evil and the evil of that for which it was made.",
                                       fontSize: 16.sp,
                                       
                                       ),
                                       SizedBox(height: 3.h),
                                       text_widget("Reference",
                                       color: Color(0xffEED04A),
                                       fontWeight: FontWeight.w600,
                                       ),
                                       SizedBox(height: 2.h),
                                       Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                          SizedBox(
                                            height: 15.h,
                                            child: VerticalDivider(
                                              color: Color(0xffE6E6E6),
                                              
                                            ),
                                          ),
                                           Expanded(
                                             child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 text_widget("Abu Sa'id al-Khudri (radiy Allähu 'anhu) reported that when the Messenger of Allah it wore a new garment he would name it: either a turban, a shirt, or a cloak; and then he would say [the above]. ",
                                                 color: Color(0xff2B3032),
                                                 fontSize: 15.sp,
                                                 ),
                                                 SizedBox(height: 1.h),
                                                 Row(
                                                  children: [
                                                    Image.asset("assets/icons/book.png",height: 2.6.h),
                                                    SizedBox(width: 1.w),
                                                    text_widget("Hadith",
                                                    color: Color(0xffDF7778),
                                                    fontSize: 15.sp,
                                                    ),
                                                    SizedBox(width: 3.4.w),
                                                    CircleAvatar(
                                                      radius: 0.2.h,
                                                      backgroundColor: Color(0xff9BC851),
                                                    ),
                                                    SizedBox(width: 2.w),
                                                    text_widget("Tirmidhi 1767",
                                                    fontSize: 15.sp,
                                                    color: Color(0xff9BC851),
                                                    ),
                                                  ],
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ],
                                       ),
                                       
                                       SizedBox(height: 20.h),
                                    ],
                                   ),
                                 ),
                               ),
                             )

            ],
          ),
        ),
      ],
    );
  }
}