import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.color,
    required this.text,
    this.onPressed,
    this.borderRadius = 15,
  });
  final Color color;
  final String text;
  final Function()? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            backgroundColor: color,
            minimumSize: const Size(370, 60)),
        onPressed: onPressed,
        child:
            Text(text, style: kTextStyle.copyWith(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
