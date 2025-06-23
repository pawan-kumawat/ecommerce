import 'package:ecommerce_platform/common/styles/spacing_style.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image , title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(image),width: THelperFunctions.screenWidth() *0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Title & SibTitle
              Text(title, style:  Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(subTitle, style:  Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed,child: Text("Continue" ),),),
            ],
          ),
        ),
      ),
    );
  }
}
