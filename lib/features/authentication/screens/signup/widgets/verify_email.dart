import 'package:ecommerce_platform/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:ecommerce_platform/features/authentication/screens/login/login.dart';
import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:ecommerce_platform/utils/constants/text_strings.dart';
import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSection),
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() *0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Title & SibTitle
              Text(TText.confirmEmail, style:  Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("support@E-commerce.com", style:  Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TText.confirmEmailSubTitle, style:  Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Buttons
              SizedBox(width: double.infinity,child:
              ElevatedButton(onPressed: ()=> Get.to(()=> SucessScreen(
                      image:TImages.staticSuccessIllustration,
                      subTitle: TText.yourAccountCreatedSubTitle,
                      title: TText.yourAccountCreatedTitle,
                      onPressed: ()=> Get.to(()=> LoginScreen()),

              )),child: Text("Continue" ),),),
              const SizedBox(height: TSizes.spaceBtwSections,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: Text(TText.resendEmail),),)




            ],
          ),
        ),
      ),
    );
  }
}
