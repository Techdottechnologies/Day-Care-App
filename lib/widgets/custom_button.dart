import 'package:adunestapp/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

Widget gradientButton(
  String title, {
  bool isColor = false,
  bool isGrediant = false,

  // String? iconPath,
  Color clr = Colors.white,
  Function? ontap,
  Color txtColor = Colors.white,
  bColor,
  bWidth,
  bool add = true,
  radius,
  bool icon = false,
  double font = 0,
  double height = 0,
  double width = 0,

  // bool dot = false
}) {
  return InkWell(
    onTap: () {
      if (ontap != null) {
        ontap();
      }
    },
    child: Container(
        width: width.w,
        height: height == 0 ? 6.3.h : height.h,
        decoration: BoxDecoration(
          gradient: isGrediant
              ? LinearGradient(
                  colors: [
                    Color(0xff01C2ED),
                    Color(0xff0077D3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: isColor || !isGrediant ? clr : Colors.transparent,
          borderRadius: radius ?? BorderRadius.circular(12),
          border: isColor
              ? null
              : Border.all(
                  color: bColor ?? MyColors.primary, width: bWidth ?? 1),
        ),
        child: icon
            ? Row(
                children: [
                  Spacer(),
                  add
                      ? Image.asset("assets/icons/add.png", height: 2.4.h)
                      : Image.asset(
                          "assets/step/cart.gif",
                          height: 8.h,
                        ),
                  SizedBox(width: 3.w),
                  Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontSize: font == 0 ? 17.sp : font.sp,
                          fontWeight: FontWeight.w600,
                          color: txtColor)),
                  Spacer(),
                ],
              )
            : Center(
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: font == 0 ? 17.sp : font.sp,
                        fontWeight: FontWeight.w600,
                        color: txtColor)),
              )),
  );
}
