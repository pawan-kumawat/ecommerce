import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({super.key,
    this.title,
    this.showBackArrow = true,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: TSizes.md),
   child: AppBar(
     automaticallyImplyLeading: false,
     leading: showBackArrow
         ? IconButton(onPressed: ()=>Get.back(), icon: Icon(Iconsax.arrow_left))
         : leadingIcon!= null ?IconButton(onPressed:leadingOnPressed, icon: Icon(leadingIcon)) :null ,
     title: title,
     actions: actions,

   ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
