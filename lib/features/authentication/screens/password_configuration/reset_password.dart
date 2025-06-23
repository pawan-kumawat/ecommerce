import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSection),
          child: Column(
            children: [
              /// Image with 60 % width of the screen
              Image(image: const AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() *0.6,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// Title & SubTitle
              Text(TText.changeYourPasswordSubTitle, style:  Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(TText.changeYourPasswordTitle, style:  Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// Buttons
              SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){},child: Text("Done"),),),
              SizedBox(height: TSizes.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: (){},child: Text("Done"),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
