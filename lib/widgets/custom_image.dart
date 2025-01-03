import 'package:adunestapp/config/colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomImageWidget extends StatelessWidget {
  String url;
  double? height;
  double? width;
  bool? isAssert, fullScreen;
  double? radius;
  Color? iconColor;
  double? iconSize;
  IconData? icon;
  BoxFit? fit;

  CustomImageWidget(
    this.url, {
    super.key,
    this.height,
    this.iconColor,
    this.isAssert,
    this.iconSize,
    this.fullScreen,
    this.icon,
    this.width,
    this.fit,
    this.radius = 100,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 100),
        child: Container(
            color: Colors.white,
            child: isAssert == null || !isAssert!
                ? FancyShimmerImage(
                    height: height ?? 300,
                    width: width ?? 300,
                    imageUrl: url,
                    boxFit: fit ?? BoxFit.cover,
                    errorWidget: Center(
                        child: Icon(icon ?? Icons.person,
                            size: iconSize,
                            color: iconColor ?? MyColors.primary)))
                : Image.asset(url,
                    height: height ?? 300,
                    width: width ?? 300,
                    fit: fit ?? BoxFit.cover,
                    errorBuilder: (a, b, c) => Center(
                        child: Icon(icon ?? Icons.person,
                            size: iconSize,
                            color: iconColor ?? MyColors.primary)))));
  }
}

class FullScreen extends StatelessWidget {
  final String url;
  final bool? isAssert;

  const FullScreen(
    this.url, {
    super.key,
    this.isAssert,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
          child: Container(
              color: MyColors.grey,
              child: isAssert == null || !isAssert!
                  ? FancyShimmerImage(
                      imageUrl: url,
                      boxFit: BoxFit.contain,
                      errorWidget: Center(
                          child: Icon(Icons.error, color: MyColors.primary)))
                  : Image.asset(url,
                      fit: BoxFit.contain,
                      errorBuilder: (a, b, c) => Center(
                          child: Icon(Icons.error, color: MyColors.primary))))),
      SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 3),
              child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: const Icon(Icons.close,
                              color: Colors.white, size: 20))))))
    ]);
  }
}
