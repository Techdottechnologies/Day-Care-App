import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// For screen size responsiveness

class MonthDropdown extends StatefulWidget {
  @override
  _MonthDropdownState createState() => _MonthDropdownState();
}

class _MonthDropdownState extends State<MonthDropdown> {
  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String? selectedMonth;

  @override
  Widget build(BuildContext context) {
    return  customDropDown1(
          months,
          "Select Month",
          selectedMonth,
          (value) {
            setState(() {
              selectedMonth = value;
            });
          },
        )
     ;
  }
}

Widget customDropDown1(
  List<String> items,
  String title,
  String? selectedValue,
  ValueChanged<String?> onChanged,
) {
  return FittedBox(
    fit: BoxFit.fitWidth,
    child: Container(
      height: 3.5.h,
      width: 25.w, // Adjusted width for better appearance
      decoration: BoxDecoration(
        color: const Color(0xffEED04A),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          SizedBox(width: 2.w),
          Icon(
            Icons.calendar_today, // Calendar icon
            size: 1.8.h,
            color: Colors.white,
          ),
          // SizedBox(width: 1.w), // Add spacing between icon and dropdown
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                
                isExpanded: true,
                hint: Text(
                  selectedValue ?? title,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                    fontSize: 12.6.sp,
                    fontWeight: FontWeight.w600,
                    color: selectedValue != null ? Colors.white : Colors.white,
                    
                  ),
                ),
                
                dropdownStyleData: DropdownStyleData(
                  width: 30.w,
                  offset: Offset(-40, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
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
                  padding: EdgeInsets.symmetric(horizontal: 010),
                  height: 6.h,
                  width: 80.w,
                ),
                
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Remix.arrow_down_s_line,
                    size: 2.h,
                    color: Colors.white,
                  ),
                ),
                
                menuItemStyleData: MenuItemStyleData(
                  height: 40,
                  
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

