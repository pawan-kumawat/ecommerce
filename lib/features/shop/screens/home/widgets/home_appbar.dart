import 'package:ecommerce_platform/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(TText.homeAppBarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
        Text(TText.homeAppBarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),)
      ],
    ),
      actions: [
        TCartCounterIcon(iconColor: TColors.white, onPressed: (){},)
      ],
    );
  }
}
