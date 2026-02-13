import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import 'widgets/custom_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gold Tracker"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, color: AppColors.amberColor),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(AppImages.gold, height: 200),
            SizedBox(height: 30),
            CustomText(txt: "Gold Price"),
          ],
        ),
      ),
    );
  }
}
