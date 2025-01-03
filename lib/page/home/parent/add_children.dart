import 'package:adunestapp/config/colors.dart';
import 'package:adunestapp/page/home/admin/student/all_students.dart';
import 'package:adunestapp/page/home/parent/add_pickup.dart';
import 'package:adunestapp/page/home/parent/drawer.dart';
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

class AddChildren extends StatefulWidget {
  const AddChildren({super.key});

  @override
  State<AddChildren> createState() => _AddChildrenState();
}

class _AddChildrenState extends State<AddChildren> {
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
    "Class Name",
     "Class Name",
      "Class Name",
       "Class Name",


      ];
      String? selectValue;
       List<String> txts1 = [
    "Male",
     "Female",
      "Other",


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
                        onPress(
                          ontap: (){
                            Get.back();
                          },
                          child: Image.asset("assets/icons/back.png",height: 4.h,)),
                        Spacer(),
                        text_widget("Add Children",
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
                 Center(
                  child: Image.asset("assets/images/uplo.png",height: 14.h,),
                 ),
                 SizedBox(height: 4.h),
                     text_widget("Full Name",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                             "Write Name",
                                             fillColor: Color(0xffFAFAFA),
                                             
                                             mainTxtColor: Colors.black,
                                             obsecure: false,
                                             radius: 40,
                                             bColor: Colors.transparent,
                                           ),
                                            SizedBox(height: 2.h),
                    text_widget("Last Name",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                            textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write Name",
                                               fillColor: Color(0xffFAFAFA),
                                              
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             
                                           ),
                  SizedBox(height: 2.h),

  text_widget("Student ID",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                            textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write ID",
                                               fillColor: Color(0xffFAFAFA),
                                              
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             
                                           ),
                  SizedBox(height: 2.h),
                   text_widget("Medication",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           onPress(
                                            ontap: (){
                                              _selectDate(context);
                                            },
                                             child: textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write here",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             ),
                                           ),
                  SizedBox(height: 2.h),
                   text_widget("Allergies",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                          textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write here",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             
                                           ),
                  SizedBox(height: 2.h),
                
                 text_widget("Address",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                           textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write Address",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             
                                           ),
                  SizedBox(height: 2.h),

                 text_widget("City",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                          textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write City",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             ),
                                           
                  SizedBox(height: 2.h),

                 text_widget("State",
                              
                         
                         fontSize:14.sp,
                         fontWeight: FontWeight.w600),
                                           SizedBox(height: 1.h),
                                            textFieldWithPrefixSuffuxIconAndHintText(
                                               "Write State",
                                               fillColor: Color(0xffFAFAFA),
                                               enable: false,
                                               mainTxtColor: Colors.black,
                                               obsecure: false,
                                               radius: 40,
                                               bColor: Colors.transparent,
                                             
                                           ),
                  SizedBox(height: 2.h),
                   SizedBox(height: 3.h),
              text_widget("Pickup",
               fontSize: 13.6.sp,
              ),
              SizedBox(height: 2.5.h),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffDEDEDE),
                  ),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text_widget("Name",
                          fontSize: 13.6.sp,
                          color: Color(0xffA5A5A5),
                          ),
                          SizedBox(height: 1.h),
                          text_widget("Ahmed Salman",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          
                          ),
                  
                          ],
                         ),
                          Spacer(),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text_widget("Phone Number",
                          fontSize: 13.6.sp,
                          color: Color(0xffA5A5A5),
                          ),
                          SizedBox(height: 1.h),
                          text_widget("+923241234567",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          
                          ),
                          ],
                         ),
                         Spacer(),
                                                ],
                      ),
                      SizedBox(height: 1.5.h),
                       Row(
                         children: [
                           Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 text_widget("Address",
                              fontSize: 13.6.sp,
                              color: Color(0xffA5A5A5),
                              ),
                              SizedBox(height: 1.h),
                              text_widget("Street 4, Iqbal Town, Lahore, Punjab",
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              
                              ),
                                             
                              ],
                             ),
                             Spacer(),
                             Column(
                              children: [
                                Image.asset("assets/icons/edit.png",height: 2.6.h,),
                                SizedBox(height: 1.h),
                                Image.asset("assets/icons/del.png",height: 2.6.h,)
                              ],
                             ),
                         ],
                       ),
                          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7.h),
                  SizedBox(height: 5.h),
                  gradientButton("Add Pickup",
            font: 16,
            txtColor: MyColors.primary,
            ontap: () {
              Get.to(AddPickupPage());
            //  _.loginUser();
            },
            width: 90,
            radius: BorderRadius.circular(40),
            height: 6,
            isColor: false,
            clr: Colors.transparent),
              SizedBox(height: 2.h),
                  gradientButton("Add Children",
            font: 16,
            txtColor: MyColors.white,
            ontap: () {
              Get.offAll(ParentDrawer());
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