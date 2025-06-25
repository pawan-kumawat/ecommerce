import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_platform/common/widgets/product_cards/product_card_vertical.dart';
import 'package:ecommerce_platform/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_platform/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_platform/utils/constants/colors.dart';
import 'package:ecommerce_platform/utils/constants/image_strings.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/curved_edges/primary_header_container.dart';
import '../../../../../common/widgets/image_text_widgets/images/t_rounded_image.dart';
import 'home/widgets/promo_slider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     const Scaffold(
      body: SingleChildScrollView(
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
            child: Column(
              children: [
                /// sliders
                TPromoSlider(banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                  TImages.promoBanner4,
                  TImages.promoBanner5,
                  TImages.promoBanner6,
                  TImages.promoBanner7,
                  TImages.promoBanner8],),
                SizedBox(height: TSizes.spaceBtwSections,),
                ///popular products
                TProductCardVertical(),
              ],
            ),

            ),
          ],
        ),
      ),
    );
  }
}
