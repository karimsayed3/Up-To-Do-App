import 'package:flutter/material.dart';
import 'package:uptodo/core/theming/styles.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key, required this.controller, required this.onPressed});
final PageController controller;
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'SKIP',
        style: TextStyles.font20OffWhiteBold,
      ),
    );
  }
}
