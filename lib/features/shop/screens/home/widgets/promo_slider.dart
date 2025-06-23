import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_platform/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_platform/common/widgets/image_text_widgets/images/t_rounded_image.dart';
import 'package:ecommerce_platform/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';


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
