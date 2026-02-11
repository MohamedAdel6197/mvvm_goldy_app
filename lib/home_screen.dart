import 'package:flutter/material.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_strings.dart';
import 'core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            text: AppStrings.gold,
            onTap: () {},
            color: AppColors.primaryColor,
          ),
          CustomButton(
            text: AppStrings.seliver,
            onTap: () {},
            color: AppColors.secondaryColor,
          ),
        ],
      ),
    );
  }
}
