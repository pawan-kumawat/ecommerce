import 'package:ecommerce_platform/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        right: TSizes.defaultSection,
        bottom: TDeviceUtils.getBottomNavigationBarHeight()
        ,child: ElevatedButton(
      style: ElevatedButton.styleFrom(shape: const CircleBorder(eccentricity: 0),backgroundColor: dark ? TColors.primary :Colors.black),
      onPressed: ()=> OnboardingController.instance.nextPage(),
      child: const Icon(Iconsax.arrow_right_3),
    ));
  }
}
