import 'package:flutter/material.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_strings.dart';
import 'core/routing/app_routes.dart';
import 'core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: AppStrings.gold,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.gold);
              },
              color: AppColors.primaryColor,
            ),
            SizedBox(height: 60),
            CustomButton(
              text: AppStrings.sliver,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.sliver);
              },
              color: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
