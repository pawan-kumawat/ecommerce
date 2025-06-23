import 'package:ecommerce_platform/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'terms_conditions_checkbox.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        /// First and Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: TText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
                expands: false,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: TText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
                expands: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Username
        TextFormField(
          expands: false,
          decoration:const InputDecoration(
            labelText: TText.username, prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        /// Email
        TextFormField(
          decoration:const InputDecoration(
            labelText: TText.email, prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Phone Number
        TextFormField(
          decoration: const InputDecoration(
            labelText: TText.phoneNo, prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        ///Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: TText.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwSections,),

        /// Terms & Conditions
        const TTermsAndConditionCheckBox(),
        const SizedBox(height: TSizes.spaceBtwSections,),

        ///Sign Up Button
        SizedBox(width: double.infinity,
          child: ElevatedButton(
            onPressed: ()=> Get.to(()=> VerifyEmailScreen()),
            child: const Text(TText.createAccount),),)
      ],
    ),
    );
  }
}
