import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );


}