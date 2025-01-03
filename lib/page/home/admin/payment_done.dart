import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/widgets/custom_button.dart';
import 'package:adunestapp/widgets/ontap.dart';
import 'package:adunestapp/widgets/txt_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../widgets/txt_field.dart';

class PaymentDone extends StatefulWidget {
  const PaymentDone({super.key});

  @override
  State<PaymentDone> createState() => _PaymentDoneState();
}

class _PaymentDoneState extends State<PaymentDone> {
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
                            text_widget("Payment Successful",
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
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Spacer(),
                       SizedBox(height: 7.h),

                Center(
                  child: Container(
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(22)
                    ),
                    child: Column(
                      children: [
                         SizedBox(height: 4.h),
                  
                        Image.asset("assets/images/done1.png",height: 10.h),
                        SizedBox(height: 2.h),
                        text_widget("Great",
                        color: Colors.white,
                        fontSize: 15.3.sp,
                        fontWeight: FontWeight.w600,
                        ),
                          SizedBox(height: 0.5.h),
                        text_widget("Payment Success",
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 2.h),
                        Divider(
                          color: Colors.white,
                          endIndent: 8.w,
                          indent: 8.w,
                        ),
                         SizedBox(height: 2.h),
                        text_widget("Total Pay",
                        color: Colors.white,
                        fontSize: 15.3.sp,
                        fontWeight: FontWeight.w600,
                        ),
                          SizedBox(height: 0.5.h),
                        text_widget("\$23.00",
                        color: Colors.white,
                        fontSize: 19.sp,
                        fontWeight: FontWeight.bold,
                        ),
                         SizedBox(height: 4.h),
                  
                  
                      ],
                    ),
                  ),
                ),
                Spacer(),

              ],
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