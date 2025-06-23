import 'package:ecommerce_platform/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_platform/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),right: TSizes.defaultSection,
      child: TextButton(
        onPressed: ()=>OnboardingController.instance.skipPage(),
        child:
        const Text("Skip"),
      ),
    );
  }
}