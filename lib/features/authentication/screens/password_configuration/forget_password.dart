import 'package:ecommerce_platform/app.dart';
import 'package:ecommerce_platform/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_platform/utils/constants/enum.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSection),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///  Heading
            Text(TText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text(TText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: TSizes.spaceBtwSections * 2,),

            ///  Text Field
            TextFormField(
              decoration: InputDecoration(
                labelText: TText.email,prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections ),



            ///  Submit Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.off(()=> ResetPassword()), child: Text("Submit")))
          ],
        ),
      ),
    );
  }
}
