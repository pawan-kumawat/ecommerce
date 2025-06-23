import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.fit = BoxFit.contain,
    this.width ,
    this.height ,
    this.border,
    this.padding,
    this.onPressed,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.backgroundColor = TColors.light,
    this.applyImageRadius = true,
    this.borderRadius = TSizes.md,


  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(TSizes.md)),
        child: ClipRRect(
          borderRadius: applyImageRadius? BorderRadius.circular(borderRadius): BorderRadius.zero,
          child: Image(image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
              fit: fit),
        ),
      ),
    );
  }
}
