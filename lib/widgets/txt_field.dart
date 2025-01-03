import 'package:adunestapp/config/colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

Widget textFieldWithPrefixSuffuxIconAndHintText(String hintText,
    {suffixIcon,
    prefixIcon,
    TextEditingController? controller,
    int line = 1,
    bool isSuffix = false,
    bool enable = true,
    double? radius,
    fillColor,
    bColor,
    mainTxtColor,
    pColor,

    hintColor,
    bool isPrefix = false,
    color,
    iconColor,
    bool obsecure = false}) {
  return StatefulBuilder(
    builder: (BuildContext context, setState) {
      return TextField(
        maxLines: line,
        enabled: enable,
        obscureText: obsecure,
        controller: controller,
        style: GoogleFonts.poppins(
            color: mainTxtColor ?? Colors.black54, fontSize: 15.sp),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                fontSize: 13.7.sp,
                fontWeight: FontWeight.w400,
                color: hintColor ?? Colors.black54),
            contentPadding: const EdgeInsets.symmetric(vertical: 18),
            suffixIconConstraints: BoxConstraints(),
            suffixIcon: isSuffix
                ? Padding(
                    padding:  EdgeInsets.only(right:  5.w),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            obsecure = !obsecure;
                          });
                        },
                        child: Image.asset(
                          suffixIcon ?? "assets/icons/eye.png",
                          height:suffixIcon=="assets/icons/edit.png" ||suffixIcon=="assets/icons/dap23.png" ?1.7.h: 2.3.h,
                        )),
                  )
                : const SizedBox(),
            prefixIconConstraints: BoxConstraints(minWidth:isPrefix? 13.w:8.w),
            prefixIcon: isPrefix
                ? Transform.flip(
                  flipX:false,
                  child: InkWell(
                      onTap: () {
                      
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Image.asset(
                          prefixIcon,
                          height:prefixIcon=="assets/icons/mail.png"?1.8.h: 2.h,
                          color:pColor?? Colors.black,
                        ),
                      ),
                    ),
                )
                : const SizedBox(),
            filled: true,
            fillColor: fillColor ?? Color(0xffF7F7F7),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? 35),
                borderSide:
                    BorderSide(color: bColor ?? Color(0xffD3DEF3), width: 2)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? 35),
                borderSide:
                    BorderSide(color: bColor ?? Color(0xffE6DCCD), width: 1.5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? 35),
                borderSide: BorderSide(color: MyColors.primary, width: 2))),
      );
    },
  );
}





