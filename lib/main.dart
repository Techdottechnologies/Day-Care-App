import 'package:adunestapp/page/auth/splash_screen.dart';
import 'package:adunestapp/page/home/admin/drawer.dart';

import 'package:adunestapp/page/home/parent/drawer.dart';
import 'package:adunestapp/page/home/teacher/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  Get.put(MyDrawerControllerPA());
  Get.put(MyDrawerController());
  Get.put(MyDrawerControllerT());
  Get.find<MyDrawerControllerPA>().closeDrawer();
  Get.find<MyDrawerController>().closeDrawer();
  Get.find<MyDrawerControllerT>().closeDrawer();

  // Get.find<AuthServices>().logOut();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          colorScheme: const ColorScheme(
            primary: Color(0xFF3F51B5),
            primaryContainer: Color(0xFF002984),
            secondary: Color(0xFFD32F2F),
            secondaryContainer: Color(0xFF9A0007),
            surface: Color(0xFFDEE2E6),
            error: Color(0xFF96031A),
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
        ),
      );
    });
  }
}
