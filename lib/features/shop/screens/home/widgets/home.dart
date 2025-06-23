import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_platform/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/curved_edges/primary_header_container.dart';
import '../../../../../common/widgets/image_text_widgets/images/t_rounded_image.dart';
import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child:
              Column(
              children: [
                ///app Bar
                THomeAppBar(),
                 SizedBox(height: TSizes.spaceBtwSections,),
                
                /// search Bar
                TSearchContainer(text: 'Search in Store',),
                 SizedBox(height: TSizes.spaceBtwSections,),

                ///Categories
                Padding(padding: EdgeInsets.only(left: TSizes.defaultSection),
                child: Column(
                  children: [
                    TSectionHeading(title: 'Popular Categories',showActionButton:  false,textColor: TColors.white,),
                    SizedBox(height: TSizes.spaceBtwSections,),

                    /// Categories ---2
                    THomeCategories()
                  ],
                ),
                )
              ],
            ),),
            ///body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSection),
            child: TPromoSlider(),

            ),
          ],
        ),
      );
  }
}

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
               viewportFraction: 1
                  ),
            items: const [
          TRoundedImage(imageUrl: TImages.promoBanner1),
          TRoundedImage(imageUrl: TImages.promoBanner2),
          TRoundedImage(imageUrl: TImages.promoBanner3),
              TRoundedImage(imageUrl: TImages.promoBanner4),
              TRoundedImage(imageUrl: TImages.promoBanner5),
              TRoundedImage(imageUrl: TImages.promoBanner6),
              TRoundedImage(imageUrl: TImages.promoBanner7),
              TRoundedImage(imageUrl: TImages.promoBanner8),
        ],),
        const  SizedBox(height: TSizes.spaceBtwSections,),
        Row(
          children: [
            for(int i = 0; i < 3; i++)
            TCircularContainer(
              width: 20,
              height: 4,
              margin: EdgeInsets.only(right: 10),
              backgroundColor: Colors.green,
            ),
          ],
        )
      ],
    );
  }
}
