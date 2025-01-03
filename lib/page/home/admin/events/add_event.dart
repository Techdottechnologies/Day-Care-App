import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/map_sample.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../widgets/txt_field.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
      DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
   
    return  Stack(
      children: [
        Image.asset("assets/images/lbg.png",fit: BoxFit.cover,height: Get.height,width: Get.width,),

        Scaffold(
          backgroundColor: Colors.transparent,
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
                            text_widget("Add Event",
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
                 Image.asset("assets/images/upload1.png"),
                   text_widget("Title".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write here".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                               
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                                  text_widget("Price".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write here".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                 
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                SizedBox(height: 2.h),
                                                  text_widget("Date".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               onPress(
                                                ontap: (){
                                                  _selectDate(context);
                                                },
                                                 child: textFieldWithPrefixSuffuxIconAndHintText(
                                                   "Select Date".tr,
                                                   fillColor: Color(0xffFAFAFA),
                                                   isSuffix: true,
                                                 suffixIcon: "assets/icons/date.png",
                                                 enable: false,
                                                  
                                                   mainTxtColor: Colors.black,
                                                   obsecure: false,
                                                   radius: 40,
                                                   bColor: Colors.transparent,
                                                 ),
                                               ),
                                               SizedBox(height: 2.h),
                                                  text_widget("Time".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Add Time".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                 
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                               SizedBox(height: 2.h),
                                                  text_widget("Add Location".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Add Location".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                                 
                                                
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 40,
                                                 bColor: Colors.transparent,
                                               ),
                                                 SizedBox(height: 2.h),
                                                  Container(
                          height: 25.h,
                          child: MapSample(isPin: true),
                        ),
                                                 SizedBox(height: 2.h),

                                                  text_widget("Description".tr,
                                  
                             
                             fontSize:14.sp,
                             fontWeight: FontWeight.w600),
                                               SizedBox(height: 1.h),
                                               textFieldWithPrefixSuffuxIconAndHintText(
                                                 "Write here".tr,
                                                 fillColor: Color(0xffFAFAFA),
                                            line: 6,
                                                 mainTxtColor: Colors.black,
                                                 obsecure: false,
                                                 radius: 20,
                                                 bColor: Colors.transparent,
                                               ),
                                                  SizedBox(height: 6.h),
                    gradientButton("Add Event",
                font: 16,
                txtColor: MyColors.white,
                ontap: () {
                //  _.loginUser();
                },
                width: 90,
                radius: BorderRadius.circular(40),
                height: 6,
                isColor: true,
                clr: MyColors.primary),
        SizedBox(height: 14.h),
                ],
                 ),
                ),
              ))
            ],
          )
        
        ),
      ],
    );
}
  }
  Widget customDropDown(List<String> items, String title, String? selectedValue,
    ValueChanged<String?> onChanged) {
  return Container(
    height: 6.h,
    width: 100.w,
    decoration: BoxDecoration(
        color: Color(0xffFAFAFA), borderRadius: BorderRadius.circular(40)),
    child: Row(
      children: [
        SizedBox(width: 3.w),
        Expanded(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              hint: Text(
                selectedValue ?? title,
                style: GoogleFonts.poppins(
                    fontSize: 13.7.sp,
                    fontWeight: FontWeight.w400,
                    color:
                        selectedValue != null ? Colors.black : Colors.black54),
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
                )
              ),
              
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: GoogleFonts.nunito(
                            fontSize: 14.sp,
                          ),
                        ),
                      ))
                  .toList(),
              onChanged: onChanged,
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 22),
                height: 6.h,
                width: 100.w,
              ),
              
              iconStyleData: IconStyleData(
                icon: Icon(
                  Remix.arrow_down_s_line,
                  size: 2.5.h,
                ),
              ),
              menuItemStyleData:  MenuItemStyleData(
                height: 40,
                
              ),
            ),
          ),
        ),
      ],
    ),
  );
}