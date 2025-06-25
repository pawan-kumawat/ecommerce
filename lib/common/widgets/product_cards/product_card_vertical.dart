import 'package:ecommerce_platform/common/styles/shadow_style.dart';
import 'package:ecommerce_platform/common/widgets/Icon/t_circular_icon.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/circular_container2.dart';
import 'package:ecommerce_platform/common/widgets/image_text_widgets/images/t_rounded_image.dart';
import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          TCircularContainer2(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark :TColors.light,
            child: Stack(
              children: [
                ///Tumbnail Image
                TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),

                ///Sale Tag
                Positioned(
                  top: 12,
                  child: TCircularContainer2(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withValues(alpha: 0.3),
                    padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),
                ///Favourite Icon Button
                Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(color: Colors.red, icon: Iconsax.heart5, )),




              ],
            ),

          ),


          ///Details
          Padding(padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: "Green Nike Air Shoes",smallSize: true,),
                const SizedBox(height: TSizes.spaceBtwItems / 2,),
                Row(
                  children: [
                    Text("Nike", overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelMedium,),
                  ],
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}
