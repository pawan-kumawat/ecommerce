import 'package:ecommerce_platform/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_platform/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce_platform/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSection),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TText.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Form
              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections ,),


              /// Divider
              TFormDivider(dark: dark, dividerText: TText.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections ,),


              ///Social buttons
              const TSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}
