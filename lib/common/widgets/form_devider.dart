import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark,
    required this.text,
  });

  final bool dark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? TColors.darkerGrey : TColors.grey,
                thickness: 1,
                indent: 60,
                endIndent: 5)),
        Text(text.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? TColors.darkerGrey : TColors.grey,
                thickness: 1,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
