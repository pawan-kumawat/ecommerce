import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/device/device_utility.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';


class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSection),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: showBackground ?dark ? TColors.dark :  TColors.light:Colors.transparent ,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: Border.all(color: TColors.grey)
          ),
          child: Row(
            children: [
              Icon(icon, color: TColors.darkerGrey,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
