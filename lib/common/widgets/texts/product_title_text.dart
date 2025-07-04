import 'package:flutter/material.dart';


class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    this.textAlign = TextAlign.left,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;


  @override
  Widget build(BuildContext context) {
    return Text(title,
      style:  smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign:textAlign,
    );
  }
}
