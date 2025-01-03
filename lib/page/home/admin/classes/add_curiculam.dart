import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../widgets/txt_field.dart';

class AddCuriculam extends StatefulWidget {
  const AddCuriculam({super.key});

  @override
  State<AddCuriculam> createState() => _AddCuriculamState();
}

class _AddCuriculamState extends State<AddCuriculam> {
  @override
  Widget build(BuildContext context) {
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
     List<String> txts = [
    "Lesson",
     "Lesson",
      "Lesson",
       "Lesson",


      ];
      String? selectValue;
       List<String> txts1 = [
    "Salamn Saleem",
     "John Doe",
      


      ];
      String? selectValue1;
    return  Scaffold(
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
                padding: const EdgeInsets.symmetric(horizontal:22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/back.png",height: 4.h,),
                        Spacer(),
                        text_widget("Add Curriculum",
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
                 
                    // 
                
                 SizedBox(height: 2.h),
                         text_widget("Select Type",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                            customDropDown(txts,"Select Class",selectValue, (value) {
                   setState(() {
                                selectValue = value;
                                
                              });
                }),
                  SizedBox(height: 2.h),
                   
                    text_widget("Date",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           onPress(
                                            ontap: (){
                                              _selectDate(context);
                                            },
                                             child: textFieldWithPrefixSuffuxIconAndHintText(
                                               "Select Date",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               isSuffix: true,
                                               suffixIcon: "assets/icons/date.png",
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             ),
                                           ),
                  SizedBox(height: 2.h),
                   text_widget("Title",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Write here",
                                             fillColor: Color(0xffFAFAFA),
                                             
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
                                            SizedBox(height: 2.h),

  text_widget("Teacher",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                            customDropDown(txts1,"Select Teacher",selectValue1, (value) {
                   setState(() {
                                selectValue1 = value;
                                
                              });
                }),
                  SizedBox(height: 2.h),
                   text_widget("Upload Resource",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           Image.asset("assets/images/upload.png"),
                                           SizedBox(height: 2.h),
                                           Row(
                                            children: [
                                              Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Image.asset("assets/images/dua.png",height: 12.h,),
                                                  Positioned.fill(
                                                    top: -1.1.h,
                                                    right: -1.1.h,
                                                    child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: CircleAvatar(
                                                      radius: 1.1.h,
                                                      child: Icon(Remix.close_line,size: 1.6.h,),
                                                    ),
                                                  ))
                                                ],
                                              )
                                            ],
                                           ),

                                 
                  SizedBox(height: 5.h),
                  gradientButton("Add Curriculum",
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
                  SizedBox(height: 25.h),

                ],
              ),
            ),
          ))
        ],
      )

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