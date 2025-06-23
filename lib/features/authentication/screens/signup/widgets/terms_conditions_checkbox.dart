import 'package:ecommerce_platform/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class TTermsAndConditionCheckBox extends StatelessWidget {
  const TTermsAndConditionCheckBox({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(height: 24,width: 24,
            child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: "${TText.iAgreeTo}",style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: "${TText.privacyPolicy} ",style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white :TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white: TColors.primary
            )),
            TextSpan(text: "${TText.and}",style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: " ${TText.termsOfUse}",style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white :TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white: TColors.primary
            ),
            ),
          ],
          ),
        ),
      ],
    );
  }
}
