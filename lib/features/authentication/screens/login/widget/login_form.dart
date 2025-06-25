import 'package:ecommerce_platform/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce_platform/features/authentication/screens/signup/widgets/signup.dart';
import 'package:ecommerce_platform/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              //Email
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right, color: Theme.of(context).iconTheme.color),
                  labelText: TText.email,
                  labelStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
                  floatingLabelStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
                  hintStyle: TextStyle(color: Theme.of(context).hintColor),
                ),
              ),


              const SizedBox(height: TSizes.spaceBtwInputFields,),

              //Password
              TextFormField(
                obscureText: true,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check, color: Theme.of(context).iconTheme.color),
                  suffixIcon: Icon(Iconsax.eye_slash, color: Theme.of(context).iconTheme.color),
                  labelText: TText.password,
                  labelStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
                  floatingLabelStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
                  hintStyle: TextStyle(color: Theme.of(context).hintColor),
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwInputFields / 2),

              //Remember Me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TText.rememberMe),
                    ],
                  ),

                  //forgot password
                  TextButton(onPressed: ()=> Get.to(()=>ForgetPassword()), child: Text(TText.forgetPassword)),
                ],
              ),
              const SizedBox(height:  TSizes.spaceBtwSections,),

              // Sign In button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=> Get.to(()=>NavigationMenu()), child: Text(TText.signIn))),
              SizedBox(height: TSizes.spaceBtwItems ,),
              //crete account
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => SignupScreen()),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Theme.of(context).textTheme.bodyLarge?.color, // sets text color according to theme

                    ),
                    child: Text(TText.createAccount),
                  ),
              ),


            ],
          ),
        ));
  }
}
