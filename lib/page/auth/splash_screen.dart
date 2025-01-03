
import 'dart:async';

import 'package:adunestapp/page/auth/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
      super.initState();
    
      Timer(Duration(seconds: 2), () async {
    
      Get.offAll(WelcomeScreen());
      });
    }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child:  Image.asset(
                        "assets/icons/splash.png",
                        fit: BoxFit.cover,
                        height: Get.height,
                        width: Get.width,
                      ),
            ),
          
            
      ],
    );
  }
}