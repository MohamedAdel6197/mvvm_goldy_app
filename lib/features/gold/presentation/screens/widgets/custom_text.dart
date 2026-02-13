import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.txt, this.color});
  final String txt;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 20,
        color: color ?? AppColors.amberColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
