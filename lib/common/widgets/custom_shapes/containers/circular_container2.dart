import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class TCircularContainer2 extends StatelessWidget {
  const TCircularContainer2({
    super.key,
    this.width ,
    this.height ,
    this.radius = TSizes.cardRadiusLg,
    this.padding ,
    this.margin,
    this.child,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color:backgroundColor,
        border: showBorder ? Border.all(color: borderColor):null ,
      ),
      child: child,
    );
  }
}