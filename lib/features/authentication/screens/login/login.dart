import 'package:ecommerce_platform/common/styles/spacing_style.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/widget/login_form.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/widget/login_header.dart';
import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding:TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //logo & titles
            TLoginHeader(dark: dark),

            //Form
            const TLoginForm(),
            //Divider
            TFormDivider(dark: dark, dividerText: TText.orSignInWith.capitalize!,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            //Footer
           const TSocialButtons()

          ],
        ),
        ),
      ),
    );
  }
}


